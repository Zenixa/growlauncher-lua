for _, obj in pairs(GetObjectList()) do
if(obj.itemid == 0)then
end
Sleep(850)
SendPacket(2, "action|input\n|text|`9GSCAN`w: Found ID:"..obj.itemid.." Amount: "..obj.amount..".")
end
Sleep(850)
SendPacket(2, "action|input\n|text|`9GSCAN`w: Finished")
