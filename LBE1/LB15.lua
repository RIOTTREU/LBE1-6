function LB15()
    gg.clearResults()
    gg.searchNumber("11001~20008;0~255;-1::9",4)
    gg.refineNumber("11001~20008",4)
    RR = gg.getResults(1)
    gg.clearResults()
    RR1 = {{["address"] = RR[1].address -104,["flags"] = 4,["name"] = "map_info"},}
    gg.addListItems(RR1)
    RR2 = {
        {["address"] = RR[1].address -100,["flags"] = 4,["value"] = "8960"},
        {["address"] = RR[1].address -88,["flags"] = 4,["value"] = "13056"},
        {["address"] = RR[1].address -84,["flags"] = 4,["value"] = "17664"},
        {["address"] = RR[1].address + 204,["flags"] = 4,["value"] = "99999999"},
    }
    while true do
        GG = gg.getListItems()
        for i = 1,#GG do
            if GG[i] ["name"] == "map_info" and GG[i] ["value"] ~= "8960" then
                if GG[i] ["name"] == "map_info" and GG[i] ["value"] == "8960" then
                else 
                    gg.setValues(RR2)
                end
            end
        end
    end
end
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        LB15()
    end
end