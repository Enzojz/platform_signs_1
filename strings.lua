local desc_EN = [[Platform Signs is a mod to demostrate the Livetext mod, which permets any mods to put dynamically generated text on game scene.
Though, this mod is still a very interesting one to use mod.
The Livetext mod must be activated to use this mod.
There are two types of signs in this mod: 1. Station name sign 2. Combined text sign

Usage:
1. Station Name Sign
Place a Station Name Sign around a station, by default there is a snapping track to help you align the sign onto the platform, use offset and distance options to place it accurately, choose the font and style before finish it.
Use the Platform Signs finalizer when everything is done, the finalizer will inject the station name onto the sign. The name injected is the closest staion to the sign.
If you want to place the station name sign on a combined sign, please uncheck the pole option.
Renaming the sign and start with #, that will force the finalizer to inject any text you want on the sign

2. Combined Sign
A combined sign permets you have multiple signs on a same pole, you can have one or some rows of signs and in each row you have can zero to two signs.
Rename the sign to prepare the text to inject:
- The name of the sign should be started with #
- "|" means a new row
- Use comma "," to seperate the two signs in the same row
- E.g #|1,2|3|4,|,5 -> 
    * The most top row will be empty
    * The second row will be "1" on the left and "2" on the right
    * The third row will be a "3" in the middle
    * The forth row will have an empty right side
    * The fifth row will have an empty left side
Use the finalizer to inject the designated text on the sign.
You can hide off the poles to make signs combined on other poles.

3. Remover
The remove helps you removing all signs, since the models will be broken into many pieces once finished. 
Place a remover around the area to clean, and reclick on the remover icon to remove signs around it.

The font support comes with Livetext mod, there are two fonts supplied with Livetext mod: Lato (game build-in font) and Alte DIN 1451 Mittelschrift font which is free to use.

The Livetext mod use unicode, the following charset are supported:
- ASCII and Latin, Latin Supplement and Latin Extended A + B
- Cyrilic and Cyrilic Supplement
- Greek
- Math signs, Arrow signs and per mille sign

Attention: not all glyphs are present in DIN 1451 font

To extend the charset to other languages or other fonts, for example CJK, a generator will be supplied later for Livetext mod. 

Changelog
1.1
* Fixed crashes linked to the params failure
* Improved the materials
* Improved the usage of remover
* Corrected the station name capture when the station has any subfix or have been renamed
]]

function data()
    return {
        en = {
            ["name"] = "Platform Signs",
            ["desc"] = desc_EN,
        },
    }
end
