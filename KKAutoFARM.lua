itemID = FindItemID("Magplant 5000 Remote")

placedelay = 110
breakdelay = 110

ecstasy = false
ow = false
mbfg = false

--dont modify this ↓
left = false
right = false
--dont modify this ↑


--dont modify this ↓

tilex = GetLocal().posX/32
tiley = GetLocal().posY/32

--dont modify this ↑

--dont modify this ↓

function punch(x, y)
    pkt = {}
    pkt.px = x;
    pkt.py = y;
    pkt.type = 3;
    pkt.value = 18;
    pkt.x = GetLocal().posX;
    pkt.y = GetLocal().posY;
    SendPacketRaw(false, pkt);
    --Sleep(45);
end

function place(x, y)
	pkt = {}
	pkt.px = x;
	pkt.py = y;
	pkt.type = 3;
	pkt.value = itemID;
	pkt.x = GetLocal().posX;
	pkt.y = GetLocal().posY;
	SendPacketRaw(false, pkt);
	--Sleep(45)
end

function checkamount(id)
for i, item in pairs(GetInventory()) do
if (item.id == id) then
return item.amount
        end    
    end
    return 0
end

--[[
if(GetTiles(3,50).fg==FindItemID("MAGPLANT 5000")) then
ecstasy = true
SendPacket(2, "action|dialog_return\ndialog_name|magplant_edit\nx|3|\ny|50|\nbuttonClicked|getRemote")
Sleep(500)
elseif(GetTiles(4,23).fg==FindItemID("MAGPLANT 5000"))then
ow = true
SendPacket(2, "action|dialog_return\ndialog_name|magplant_edit\nx|3|\ny|50|\nbuttonClicked|getRemote")
Sleep(500)
elseif(GetTiles(4,23).fg==FindItemID("MAGPLANT 5000"))then
mbfg = true
SendPacket(2, "action|dialog_return\ndialog_name|magplant_edit\nx|3|\ny|50|\nbuttonClicked|getRemote")
Sleep(500)
end
]]

--[[
if(checkamount(FindItemID("MAGPLANT 5000 Remote")) == 0)then
if(ecstasy == true)then
SendPacket(2, "action|dialog_return\ndialog_name|magplant_edit\nx|"..tilex.."|\ny|"..tiley.."|\nbuttonClicked|getRemote")
elseif(0w == true)then
SendPacket(2, "action|dialog_return\ndialog_name|magplant_edit\nx|"..tilex.."|\ny|"..tiley.."|\nbuttonClicked|getRemote")
elseif(mbfg == true)then
SendPacket(2, "action|dialog_return\ndialog_name|magplant_edit\nx|"..tilex.."|\ny|"..tiley.."|\nbuttonClicked|getRemote")
end
]]

if(GetLocal().isLeft == true)then
left = true
right = false
while left do
place(math.floor(tilex-1), math.floor(tiley))
Sleep(breakdelay)
punch(math.floor(tilex-1), math.floor(tiley))
Sleep(placedelay)

place(math.floor(tilex-2), math.floor(tiley))
Sleep(breakdelay)
punch(math.floor(tilex-2), math.floor(tiley))
Sleep(placedelay)

place(math.floor(tilex-3), math.floor(tiley))
Sleep(breakdelay)
punch(math.floor(tilex-3), math.floor(tiley))
Sleep(placedelay)
end
elseif(GetLocal().isLeft == false)then
left = false
right = true
while right do
place(math.floor(tilex+1), math.floor(tiley))
Sleep(breakdelay)
punch(math.floor(tilex+1), math.floor(tiley))
Sleep(placedelay)

place(math.floor(tilex+2), math.floor(tiley))
Sleep(breakdelay)
punch(math.floor(tilex+2), math.floor(tiley))
Sleep(placedelay)

place(math.floor(tilex+3), math.floor(tiley))
Sleep(breakdelay)
punch(math.floor(tilex+3), math.floor(tiley))
Sleep(placedelay)
end
end

--dont modify this ↑