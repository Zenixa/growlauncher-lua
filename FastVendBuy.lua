tilex = GetLocal().posX/32
tiley = GetLocal().posY/32
delay = 130

while true do
Sleep(delay)
SendPacket(2, "action|dialog_return\ndialog_name|vend_buy\nx|"..tilex.."|\ny|"..tiley.."|\nbuyamount|1")
Sleep(delay)
SendPacket(2, "action|dialog_return\ndialog_name|vend_buyconfirm\nx|"..tilex.."|\ny|"..tiley.."|\nbuyamount|1|")
end