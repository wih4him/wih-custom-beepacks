# Filling Gaps Fizzlers

Five two-function fizzlers for BEEmod (BEE2) and Portal 2. They fill the gaps between the stock Emancipation Grill and Discouragement Field, giving ten fizzlers in all.

![The ten fizzlers](images/icons.png)

Each item holds two fizzlers. The editor dropdown picks the one it starts as, input B swaps it to the other while you play, and input A switches it on and off.

| Item | First function | Second function |
|---|---|---|
| Portal Wiper / Portal Shield | **Portal Wiper** (magenta, with a fractal pattern): walk through it and your open portals close, and in co-op the other player's too. You, cubes, turrets and portal shots pass. | **Portal Shield** (burgundy, with slow violet swirls): it stops portal shots and nothing else. |
| Personnel Restrictor / Physics Gate | **Personnel Restrictor** (silver, with gold strands): only you are stopped. Cubes, turrets, portals and portal shots pass. | **Physics Gate** (aquamarine, with teal strands and slow turquoise spirals): cubes, turrets and portal shots are stopped without being fizzled. You and your portals pass. |
| Solid-Matter Dissolver / Lethal Threshold Limiter | **Solid-Matter Dissolver** (red laser beams with orange sparks): you die on touch, cubes and turrets are fizzled, and portals and portal shots pass. | **Lethal Threshold Limiter** (laser beams over a burgundy field): you die on touch, cubes and turrets pass, and portal shots are stopped. |
| Phyzzling Portal-Grater / Soft-Reset Boundary | **Phyzzling Portal-Grater** (dark seafoam, with fractal spirals and a sliding mesh): cubes and turrets are stopped at the field, walking through it closes your open portals, and you and your portal shots pass. | **Soft-Reset Boundary** (magenta, over an orange particle field): cubes and turrets are fizzled, walking through it closes your open portals, and you and your portal shots pass. |
| Fizzle-Fence / Thermo-Barrier | **Fizzle-Fence** (white-blue bars): you are stopped at it, cubes and turrets that touch it are fizzled, and portals and portal shots pass. | **Thermo-Barrier** (a red grate): you die on touch, cubes and turrets are stopped at it, and portals and portal shots pass. |

## Options (right-click a placed fizzler)

- **Start Enabled:** the field is on when the map starts. Untick it and the field starts off until input A turns it on.
- **Start Open:** while the field is on, pellets bounce off the Portal Wiper, Portal Shield, Personnel Restrictor and Lethal Threshold Limiter. The other six already stop or destroy pellets.
- **Start Reversed:** while it is on, the field also stops gel and glows in its own colour.

## Inputs and outputs

- **Input A** switches the field on and off. A plain wire (from a button or an antenna, for example) goes to input A.
- **Input B** swaps the function. Wire it through an item that sends to input B, such as BEEmod's SR strip.
- **Fizzler Output Relay:** place one on a fizzler to wire it to other items. The output is on while the field is on. While it is on, something crossing the field switches the output off for a moment; each item's description lists which crossings count. The relay's Timer sets how long that moment lasts, and its countdown sign counts down while the output is off.

## Install

1. Download `WIH_FillingGapsFizzlers.bee_pack` from the Releases page. The unpacked contents are in `packages/FillingGapsFizzlers/`.
2. Put it in BEEmod's `packages` folder.
3. Restart BEEmod. The five items have the tag "Fizzlers".

Made and tested with BEEmod 4.46.1. The Fizzler Output Relay is one of BEEmod's own standard packages. Portal 2 is required.

## Good to know

- Start Reversed's glow uses the engine's dynamic lights, two per fizzler. Portal 2 draws at most 32 at once, so a map with more than 16 glowing fizzlers will lose some of the glow.

## Where they fit

How these ten compare with the other fields in Portal 2 and the community's packages (what each lets through, by whom, in which package):

![The Fields chart](images/fields-chart.png)

## Credits

The editor models and the Fizzle-Fence / Thermo-Barrier material are FourthReaper's Force Deflection Field model and material, recoloured. The palette icons are drawn over BEEmod's stock fizzler icon. The orange particle is Valve's own, recoloured. See [CREDITS.md](CREDITS.md) for the full credits and for which licence covers which files.

## Licence

- **Code** (VScripts, item configuration, instances): MIT, see [LICENSE](LICENSE). © 2026 William Isaiah Hardwick.
- **Original artwork** (field textures, the chart, and wih4him's additions to the icons): CC BY 4.0, see [LICENSE-ASSETS](LICENSE-ASSETS).
- **Not covered:** Valve-derived files (models, materials, particles, sounds) remain Valve's property, included for free, non-commercial use with Portal 2. FourthReaper's editor models and material remain FourthReaper's. BEEmod's selection box and base icon remain BEEmod's. [CREDITS.md](CREDITS.md) lists which files these are.

Assets may be redistributed as part of compiled Portal 2 maps.

Not affiliated with or endorsed by Valve.
