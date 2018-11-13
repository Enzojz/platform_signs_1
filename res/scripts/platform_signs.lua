local livetext = require "livetext"
local coor = require "livetext/coor"
local pipe = require "livetext/pipe"
local func = require "livetext/func"

local ps = {}
ps.params = function()
    return {
        {
            key = "font",
            name = _("Font"),
            values = {_("Default"), _("DIN 1451")},
            defaultIndex = 0
        },
        {
            key = "weight",
            name = _("Text Weight"),
            values = {_("Regular"), _("Bold")},
            defaultIndex = 0
        },
        {
            key = "case",
            name = _("Upper case"),
            values = {_("No"), _("Yes")},
            defaultIndex = 0
        },
        {
            key = "outline",
            name = _("Outline"),
            values = {_("No"), _("Yes")},
            defaultIndex = 0
        },
        {
            key = "poleType",
            name = _("Pole Type"),
            values = {_("Cylinder"), _("Cuboid"), _("No Pole")},
            defaultIndex = 1
        },
        {
            key = "signColor",
            name = _("Sign Color"),
            values = {_("White"), _("D.Blue"), _("Blue"), _("S.Blue")},
            defaultIndex = 0
        },
        {
            key = "textColor",
            name = _("Text Color"),
            values = {_("D.Blue"), _("Blue"), _("S.Blue"), _("Auto")},
            defaultIndex = 3
        },
        {
            key = "outlineColor",
            name = _("Outline Color"),
            values = {_("White"), _("D.Blue"), _("Blue"), _("S.Blue"), _("Black"), _("Text")},
            defaultIndex = 5
        },
        {
            key = "distanceSign",
            name = "",
            values = {"-", "+"},
            defaultIndex = 0,
        },
        {
            key = "distance",
            name = _("Distance to track"),
            values = func.seqMap({1, 10}, function(i) return tostring(i * 0.5 + 2) end),
            defaultIndex = 4
        },
        {
            key = "heightSign",
            name = "",
            values = {"-", "+"},
            defaultIndex = 1,
        },
        {
            key = "height",
            name = _("Height Adjustment"),
            values = func.seqMap({0, 10}, function(i) return tostring(i * 0.1) end),
            defaultIndex = 0
        },
        {
            key = "offsetSign",
            name = "",
            values = {"-3", "-2", "-1", "+1", "+2", "+3"},
            defaultIndex = 2,
        },
        {
            key = "offset",
            name = _("Offset Adjustment"),
            values = func.seqMap({0, 20}, tostring),
            defaultIndex = 0
        },
        {
            key = "orientation",
            name = _("Orientation"),
            values = {"X", "Y"},
            defaultIndex = 1
        },
        {
            key = "snap",
            name = _("Track Snapping"),
            values = {_("Yes"), _("No")},
            defaultIndex = 0
        }
    }
end

local defParams = ps.params()
ps.defaultParams = function(param)
    local function limiter(d, u)
        return function(v) return v and v < u and v or d end
    end
    
    func.forEach(defParams,
        function(i)param[i.key] = limiter(i.defaultIndex or 0, #i.values)(param[i.key]) end)
    return param
end

return ps
