local bot = require("robot")


function cutAtree()
bot.select(2)
while bot.compare() do
bot.swing()
bot.swingUp()
bot.up()
end

while bot.down() do
end

bot.select(1)
bot.place()
bot.select(2)
end
function pickUp()
bot.select(1)
bot.suck()
bot.select(2)


end


while true do
pickUp()

if bot.compareDown() then --检查是否是植树点
bot.turnLeft()
pickUp()
if bot.compare() then --检查树有没有长大
cutAtree()
end
bot.turnRight()
end
if bot.forward() == nil and bot.compare() then --转弯
bot.turnRight()
end
end