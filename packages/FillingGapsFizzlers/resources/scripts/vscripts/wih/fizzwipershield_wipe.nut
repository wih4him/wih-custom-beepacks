function WipePortals() {
    local p = Entities.FindByClassname(null, "prop_portal");
    while (p != null) {
        EntFireByHandle(p, "Fizzle", "", 0.0, null, null);
        p = Entities.FindByClassname(p, "prop_portal");
    }
}
