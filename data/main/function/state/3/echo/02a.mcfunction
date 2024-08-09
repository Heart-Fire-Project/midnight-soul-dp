# 30% 几率转为虚影碎片
function base:random {min:"1",max:"10"}
execute if score $randdom temp2 matches 1..3 run tag @s add fake_blue
tag @s[tag=fake_blue] remove blue