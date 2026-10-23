# Credits

- **Filling Gaps Fizzlers** by wih4him.
- **FourthReaper:** the editor models are recoloured copies of FourthReaper's Force Deflection Field editor model, and the Fizzle-Fence's bars and the Thermo-Barrier's grate use his Force Deflection Field material, recoloured. Both come from FourthReaper's Fizzlers (FR Fizzlers), one of BEEmod's own packages. With thanks.
- **The orange particle** is Valve's own Emancipation Grill particle (`portal_cleanser`) from Portal 2, recoloured orange. The Thermo-Barrier's antiphase noise is Valve's `fizzler_noise` texture shifted by half.
- **The palette icons** are drawn over BEEmod's stock fizzler icon (a render of Valve's fizzler model).
- **BEEmod** (BEE2.4) by the BEEmod team: the item format, the Fizzler Output Relay and the SR strip these items work with.
- **Portal 2** by Valve.

# Which licence covers which files

All paths below are inside `packages/FillingGapsFizzlers/` unless they start with `images/`.

| Files | Owner | Licence |
|---|---|---|
| `resources/scripts/vscripts/wih/*.nut`, `info.txt`, `items/*/editoritems.txt`, `properties.txt`, `vbsp_config.cfg`, `resources/instances/**/*.vmf`, `resources/materials/BEE2/models/props_map_editor/fizzler/wfgf*.vmt` (the 20 editor tints), `resources/materials/models/props_map_editor/palette/clean/*.vmt`, and every `resources/materials/wih/fizz/*.vmt` except the 16 listed below | wih4him | MIT ([LICENSE](LICENSE)) |
| `resources/materials/wih/fizz/*.vtf` except `fgf_noise_fdf_half.vtf` (the field, flow, noise, spiral, swirl, wisp, bar, grate, strand, tile and blend textures), and `images/fields-chart.png` | wih4him | CC BY 4.0 ([LICENSE-ASSETS](LICENSE-ASSETS)) |
| `resources/BEE2/items/clean/*.png`, `resources/materials/models/props_map_editor/palette/clean/*.vtf`, `images/icons.png` (the palette icons) | wih4him's additions; the base icon is BEEmod's / Valve's | CC BY 4.0 covers only wih4him's additions |
| `resources/materials/wih/fizz/fizzfencethermo_{barsf,barsf2,grate,grate2}_{center,left,right,short}.vmt` (16; FourthReaper's Force Deflection Field material, recoloured) | FourthReaper | **Excluded** from MIT and CC BY |
| `resources/models/props_map_editor/bee2/clean/wih_fillinggaps_faces_*.{mdl,vvd,dx90.vtx}` (FourthReaper's FDF editor model, recoloured and renamed) | FourthReaper | **Excluded** from MIT and CC BY |
| `resources/particles/wih_softreset_orange_fgf.pcf` (Valve's `portal_cleanser`, recoloured) | Valve | **Excluded** from MIT and CC BY |
| `resources/materials/wih/fizz/fgf_noise_fdf_half.vtf` (Valve's `effects/fizzler_noise.vtf`, shifted by half) | Valve | **Excluded** from MIT and CC BY |
| `resources/models/puzzlemaker/selection_bee2/clean/*.3ds` (the stock selection box) | BEEmod | **Excluded** from MIT and CC BY |

## Third-party files

- **FourthReaper:** his Force Deflection Field editor model (the 10 `wih_fillinggaps_faces_*` models) and his Force Deflection Field material (the 16 `fizzfencethermo_*` materials above) remain FourthReaper's property. They are credited and are excluded from this repository's MIT and CC BY licences. Permission to redistribute them has been requested.
- **Valve:** the Valve-derived files above, and any Valve model, material, texture or sound these files reference, remain Valve's property. They are included for free, non-commercial use with Portal 2 and require the game.
- **BEEmod:** the stock selection box and the base fizzler icon remain the BEEmod team's (the icon is a render of Valve's fizzler model).

Assets may be redistributed as part of compiled Portal 2 maps.

Not affiliated with or endorsed by Valve.
