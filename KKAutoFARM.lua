--Private Server usage: will autofarm in the direction you are facing 3blocks bfg style

itemID = FindItemID("Magplant 5000 Remote")

placedelay = 110
breakdelay = 110

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
