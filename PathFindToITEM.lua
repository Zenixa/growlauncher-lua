pro = "freeze wand"

function FindPathToObj(ItemID)
for _, obj in pairs(GetObjectList()) do
if obj.itemid == ItemID then
FindPath(obj.posX / 32, obj.posY / 32)
Sleep(190)
end
end
end

EditToggle("ModFly",true)
EditToggle("Enable AutoCollect",true)
EditToggle("Use Radius To Collect",true)
EditToggle("Collect Radius",3)
FindPathToObj(FindItemID(pro))
EditToggle("ModFly",false)
EditToggle("Enable AutoCollect",false)
EditToggle("Use Radius To Collect",false)
EditToggle("Collect Radius",0)