function Think() { return 1.0; }

function _commit() {
    local cmd;
    if (!a_on) {
        cmd = "FireUser1";
    } else {
        local mode = BASE_MODE;
        if (b_on) { mode = 1 - mode; }
        cmd = (mode == 0) ? "FireUser2" : "FireUser3";
    }
    EntFireByHandle(self, cmd, "", 0.0, self, self);
    has_cback = false;
    committed = true;
    _field(a_on ? true : false);
}

function _schedule() {
    if (!has_cback) {
        has_cback = true;
        EntFireByHandle(self, "CallScriptFunction", "_commit", 0.01, self, self);
    }
}

function set_a(v) {
    v = (v != 0);
    if (a_on == v) { return; }
    a_on = v;
    if (b_on == null) { b_on = false; }
    _schedule();
}

function set_b(v) {
    v = (v != 0);
    if (b_on == v) { return; }
    b_on = v;

    if (a_on == null) {
        if (!ready) { pend = true; return; }
        a_on = field_on;
    }
    _schedule();
}

function _mode() {
    local m = BASE_MODE;
    if (b_on) { m = 1 - m; }
    return m;
}

function cfg_t(t) {
    TRIP = (t < 0) ? 0.5 : t.tofloat();
}

function cfg_se(se) {
    SE = (se != 0);
    if (!committed) { field_on = SE; }
    local n = self.GetName();
    outh = Entities.FindByName(null, n.slice(0, n.len() - 3) + "out");
    if (outh == null) { printl("Filling Gaps Fizzlers: " + n + " found no output part; a Fizzler Output Relay on it would stay silent"); }
    ready = true;
    _upd();
    if (pend) {
        pend = false;
        if (a_on == null) { a_on = field_on; }
        _schedule();
    }
}

function _field(on) {
    if (on == field_on) { return; }
    field_on = on;
    tok = tok + 1;
    local was = tripping;
    tripping = false;
    _upd();
    if (was) { _sign(false); }
}

function _upd() {
    if (!ready) { return; }
    local want = field_on && !tripping;
    if (want == outv) { return; }
    outv = want;
    if (outh != null) { EntFireByHandle(outh, want ? "FireUser2" : "FireUser1", "", 0.0, self, self); }
}

function det(kind) {
    if (!ready || !field_on || !SE || TRIP <= 0.0) { return; }
    if ((RULES[_mode()] & kind) == 0) { return; }
    if (!_mine()) { return; }
    local again = tripping;
    tok = tok + 1;
    tripping = true;
    _upd();
    if (again) { _sign(false); }
    _sign(true);
    EntFireByHandle(self, "RunScriptCode", "_restore(" + tok + ")", TRIP, self, self);
}

function det_p() { det(1); }
function det_o() { det(2); }

function _restore(n) {
    if (n != tok) { return; }
    tripping = false;
    _upd();
    _sign(false);
}

function _sign(run) {
    if (outh != null) { EntFireByHandle(outh, run ? "FireUser3" : "FireUser4", "", 0.0, self, self); }
}

function _mine() {
    local t = null;
    local a = null;
    try { t = caller; a = activator; } catch (e) { return _nocheck("no caller / activator"); }
    if (t == null || a == null) { return _nocheck("no caller / activator"); }
    try {
        local o = t.GetOrigin();
        local mn = t.GetBoundingMins();
        local mx = t.GetBoundingMaxs();
        local p = a.GetOrigin();
        local lo = [o.x + mn.x, o.y + mn.y, o.z + mn.z];
        local hi = [o.x + mx.x, o.y + mx.y, o.z + mx.z];
        local pp = [p.x, p.y, p.z];
        local thin = 0;
        for (local i = 1; i < 3; i++) { if (hi[i] - lo[i] < hi[thin] - lo[thin]) { thin = i; } }
        for (local i = 0; i < 3; i++) {
            if (i == thin) { continue; }
            if (hi[i] - lo[i] < 8.0) { return _nocheck("a field box too small"); }
            if (pp[i] < lo[i] - 1.0 || pp[i] >= hi[i]) { return false; }
        }
        return true;
    } catch (e) { return _nocheck("" + e); }
}

function _nocheck(why) {
    if (!warned) {
        warned = true;
        printl("Filling Gaps Fizzlers: " + self.GetName() + " cannot tell which field a crossing belongs to (" + why + "); every touch counts");
    }
    return true;
}
