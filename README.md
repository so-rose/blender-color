# blender-color #

Blender OCIO configs
=======
I was in need of some unified OCIO configs. So, drawing on https://github.com/sobotka/filmic-blender, the base Blender config, and some custom LUTs/additions/subtractions, I started this.

*Please start Issues/misc. on GitLab: https://git.sofusrose.com/so-rose/blender-color*

## Installation
Supported platforms are Linux and Mac. To install, copy/paste the following into a terminal:

1. **Download, Unzip**. Do this anywhere, really.
2. **Drag 'n Drop**: Copy all the files in the unzipped repo into `<blender bin>/<blender version>/datafiles/colormanagement`.


**Alternatively**: If you're on Mac or Linux, you can start Blender with the new config from a Terminal using: `OCIO=/path/to/blender-color/config.ocio blender`

You're done!

## Documentation
Config setups are contained in branches. There are three branches currently:
* master: Basic setup. Use as template to make new setups.
* prod_color: My custom, from-scratch config/LUTs. Not really working perfectly right now.
* modded_blender: My modded Blender config, which combines https://github.com/sobotka/filmic-blender, vanilla Blender, and a few more features.

To switch to the branch containing the setup you want: First clone the repo, then run `git checkout <branchname>`. Alternatively, just download the branch's zip file.

## Modded Blender Setup
Definately the most robust setup. Make sure your monitor is calibrated!

Supported colorspaces are:
* sRGB: Matches the monitor pretty well. But usually, you want to use the Look curves based on Filmic for a better effect, rendering to ACES if this isn't the last leg of the journey (it rarely is).
* DCI-P3: The nice and wide space of some projectors.
* Rec709: Matches TVs pretty well.
* Rec2020: Wide-gamut space.
* XYZ: For completeness sake.
* ACES: De facto space to render to, when what you need is a DI (Digital Intermediate). Store in an EXR, possibly for later "Filmic" grading.
* "Filmic": See https://github.com/sobotka/filmic-blender for more info about this one. It implements an HDR log format, simulates filmic crosstalk, and grades it back to a final controllable contrast (with appropriately soft toe and shelf).

filters_list contains the 3D LUTs from Blender vanilla. I think they're kind of distracting glorified Instagram filters. If you want to include them, or your own 3D LUT, paste it to the end of config.ocio!
