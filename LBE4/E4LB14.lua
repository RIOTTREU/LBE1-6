function LB1()
    function reb()
        gg.clearResults()
        gg.searchNumber('29',gg.TYPE_FLOAT)
        gg.refineNumber('29',gg.TYPE_FLOAT)
        t = gg.getResults(100)
        for i, v in ipairs(t) do
            t[i].value = '70'
            t[i].freeze = false
            t[i].name = "ดึงบอส"
            gg.setValues(t)
            gg.clearResults()
        end 
    end
    gg.clearResults()
    gg.searchNumber("11001~20008;0~255;-1::9",4)
    gg.refineNumber("11001~20008",4)
    RR = gg.getResults(1)
    gg.clearResults()
    RR1 = {{["address"] = RR[1].address -104,["flags"] = 4,["name"] = "map_info"},}
    gg.addListItems(RR1)
    RR2 = {
        {["address"] = RR[1].address -100,["flags"] = 4,["value"] = "50660"},
        {["address"] = RR[1].address -88,["flags"] = 4,["value"] = "9984"},
        {["address"] = RR[1].address -84,["flags"] = 4,["value"] = "16640"},
        {["address"] = RR[1].address + 204,["flags"] = 4,["value"] = "99999999"},
    }
    RR3 = {
        {["address"] = RR[1].address + 204,["flags"] = 4,["value"] = "99999999"},
    }
    while true do
        GG = gg.getListItems()
        for i = 1,#GG do
            if GG[i] ["name"] == "map_info" and GG[i] ["value"] ~= "50690" then
                if GG[i] ["name"] == "map_info" and GG[i] ["value"] == "50660" then
                else 
                    gg.setValues(RR2)
                    gg.sleep(3500)
                    gg.setValues(RR3)
                    gg.sleep(4450)
                    reb()
                end
            end
        end
    end
end
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        LB1()
    end
end