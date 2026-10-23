if (!("WIH_FGF_LIB" in getroottable()) || !("det" in ::WIH_FGF_LIB)) {
    ::WIH_FGF_LIB <- {};
    IncludeScript("wih/fgf_fn.nut", ::WIH_FGF_LIB);
}
if (!("det" in ::WIH_FGF_LIB)) {
    printl("Filling Gaps Fizzlers: its functions file wih/fgf_fn.nut did not load - the fizzler cannot switch");
}
foreach (k, v in ::WIH_FGF_LIB) {
    this[k] <- v;
}
BASE_MODE <- 0;
RULES <- [2, 1];
a_on <- null;
b_on <- null;
has_cback <- false;
committed <- false;
field_on <- false;
SE <- false;
TRIP <- 0.5;
ready <- false;
outh <- null;
outv <- false;
tripping <- false;
tok <- 0;
warned <- false;
pend <- false;
