function _wpClean() {
    local n = self.GetName();
    local cut = -1;
    for (local i = 0; i < n.len(); i += 1) { if (n.slice(i, i + 1) == "-") cut = i; }
    return Entities.FindByName(null, ((cut < 0) ? n : n.slice(0, cut + 1)) + "pgclean");
}
function _wpRest() {
    local p = null;
    while (p = Entities.FindByClassname(p, "prop_portal")) {
        if (p.GetName() != "") continue;
        local s = p.GetScriptScope();
        if (s != null && ("__pgun_active" in s) && s.__pgun_active) EntFireByHandle(p, "Fizzle", "", 0.0, null, null);
    }
}
function WipePortals() {
    local c = _wpClean();
    if (c == null) return;
    if (IsMultiplayer()) EntFireByHandle(self, "RunScriptCode", "_wpRest()", 0.25, null, null);
    EntFireByHandle(c, "Enable", "", 0.05, null, null);
    EntFireByHandle(c, "Disable", "", 0.15, null, null);
}
