local desc_EN = [[Platform Signs is a mod to demostrate the Livetext mod, which permets any mods to put dynamically generated text on game scene.
Though, this mod is still a very interesting one to use mod.
The Livetext mod must be activated to use this mod.
There are two types of signs in this mod: 1. Station name sign 2. Combined text sign, you can find them in the depot menu.

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
1.3
* Added strip decoration
* Added possibilty to have two poles on the sides
* Unlocked bold style for DIN font
1.2
* Fixed crash when there's no station close to the sign
* Fixed crash when there're more than one station close to the sign
* Fixed incorrect station name injection when there is depot close to the sign
* Chinese and French UI translations
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
        fr = {
            ["name"] = "Panneau du Quai",
            ["desc"] = desc_EN,
            ["Font"] = "Police",
            ["Text Weight"] = "Poids",
            ["Upper case"] = "Majuscule",
            ["Outline"] = "Contour",
            ["Pole Type"] = "Type de pôle",
            ["Sign Color"] = "Couleur du panneau",
            ["Text Color"] = "Couleur des caractères",
            ["Outline Color"] = "Couleur du contour",
            ["Distance to track"] = "Distance vers la voie d'aide",
            ["Height Adjustment"] = "Ajustement d'hauteur",
            ["Offset Adjustment"] = "Décalage",
            ["Orientation"] = "Orientation",
            ["Default"] = "Défault",
            ["Regular"] = "Ordinaire",
            ["Bold"] = "Gras",
            ["Cylinder"] = "Cylindre",
            ["Prism"] = "Prisme",
            ["No Pole"] = "Sans",
            ["White"] = "Blanc",
            ["D.Blue"] = "Marine",
            ["Blue"] = "Bleu",
            ["Azur"] = "Azure",
            ["Black"] = "Noir",
            ["Text"] = "Script",
            ["Strip"] = "Bande",
            ["Decoration"] = "Décoration",
            ["Decoration Color"] = "Couleur de déco",
            ["Pole Count"] = "Nombre de pôle",
            ["Single"] = "Simple",
            ["Double"] = "Double",
            ["None"] = "Aucun",
            ["Track Snapping"] = "Voie d'aide magnétique"
        },
        zh_CN = {
            ["name"] = "站台牌",
            ["desc"] = desc_EN,
            ["Font"] = "字体",
            ["Text Weight"] = "字重",
            ["Upper case"] = "全大写",
            ["Outline"] = "外廓线",
            ["Pole Type"] = "支撑杆类型",
            ["Sign Color"] = "站牌颜色",
            ["Text Color"] = "文字颜色",
            ["Outline Color"] = "外廓线颜色",
            ["Distance to track"] = "到辅助轨道距离",
            ["Height Adjustment"] = "高度调整",
            ["Offset Adjustment"] = "平移调整",
            ["Orientation"] = "指向",
            ["Track Snapping"] = "辅助吸附轨道",
            ["Default"] = "默认",
            ["Regular"] = "普通",
            ["Bold"] = "粗体",
            ["Cylinder"] = "圆柱",
            ["Prism"] = "方柱",
            ["No Pole"] = "无",
            ["White"] = "白色",
            ["D.Blue"] = "海蓝",
            ["Blue"] = "蓝色",
            ["Azur"] = "天蓝",
            ["Black"] = "黑色",
            ["Text"] = "文字",
            ["Station Name Sign"] = "站台牌",
            ["Strip"] = "色带",
            ["Decoration"] = "装饰",
            ["Decoration Color"] = "装饰颜色",
            ["Pole Count"] = "支撑杆数量",
            ["Single"] = "单",
            ["Double"] = "双",
            ["None"] = "无",
            ["Combined Signs"] = "组合指示牌"
        },
        zh_TW = {
            ["name"] = "站台牌",
            ["desc"] = desc_EN,
            ["Font"] = "字體",
            ["Text Weight"] = "字重",
            ["Upper case"] = "全大寫",
            ["Outline"] = "外廓線",
            ["Pole Type"] = "支撐桿類型",
            ["Sign Color"] = "站牌顏色",
            ["Text Color"] = "文字顏色",
            ["Outline Color"] = "外廓線顏色",
            ["Distance to track"] = "到輔助軌道距離",
            ["Height Adjustment"] = "高度調整",
            ["Offset Adjustment"] = "平移調整",
            ["Orientation"] = "指向",
            ["Track Snapping"] = "輔助吸附軌道",
            ["Default"] = "默認",
            ["Regular"] = "普通",
            ["Bold"] = "粗體",
            ["Cylinder"] = "圓柱",
            ["Prism"] = "方柱",
            ["No Pole"] = "無",
            ["White"] = "白色",
            ["D.Blue"] = "海藍",
            ["Blue"] = "藍色",
            ["Azur"] = "天藍",
            ["Black"] = "黑色",
            ["Text"] = "文字",
            ["Station Name Sign"] = "站台牌",
            ["Strip"] = "色帶",
            ["Decoration"] = "裝飾",
            ["Decoration Color"] = "裝飾顏色",
            ["Pole Count"] = "支撐桿數量",
            ["Single"] = "單",
            ["Double"] = "雙",
            ["None"] = "無",
            ["Combined Signs"] = "組合指示牌",
            ["Strip Color"] = "色带颜色"
        }
    }
end
