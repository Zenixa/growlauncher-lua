delay = 100

tilex = GetLocal().posX//32
tiley = GetLocal().posY//32

for i = 1, 150, 1 do
Sleep(delay)
SendPacket(2, "action|dialog_return\ndialog_name|password_door_reply\nx|"..tilex.."|\ny|"..tiley.."|\npassword|"..i)
end