function FindPathToObj(ItemID)
for _, obj in pairs(GetObjectList()) do
if obj.itemid == ItemID then
FindPath(obj.posX / 32, obj.posY / 32)
Sleep(1000)
end
end
end

--FindPathToObj(FindItemID("World Lock")) -- 2 = ID Dirt, So FindPath To Dropped Dirt In World


for _, obj in pairs(GetObjectList()) do
if(obj.itemid == 0)then
SendPacket(2, "action|input\n|text|`9Karva Noob`w: Nothing is here.")
end
Sleep(850)
SendPacket(2, "action|input\n|text|`9SexHook`w: Found ID:"..obj.itemid.." Amount: "..obj.amount..".")
end
Sleep(850)
SendPacket(2, "action|input\n|text|`9GSCAN`w: Finished")