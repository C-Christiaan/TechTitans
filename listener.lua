rednet.open("left")
Ties = peripheral.wrap("back")

while true do
event, player, command = os.pullEvent("chat")


if command == "Ties bouw" then
    rednet.broadcast("Build")
end
end
