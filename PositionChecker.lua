name = "`bZenixa#7524 of Legend |"
lname = true

if(lname == true)then
EditToggle("Legendary Name",true)
else
end

SendPacket(2,"action|input\n|text|/setflag jd")
Sleep(800)
while true do
x=GetLocal().posX//32
y=GetLocal().posY//32
id=GetLocal().netID
SendPacket(2,"action|input\n|text|/setname "..name.." `bPos: `b(`b"..x.."`b,`b"..y.."`b) `b(`b"..id.."`b)")
Sleep(100)
end