# 仅在结果是 0 时写入结果
function base:random {"min":1,"max":5}
execute if score @s skill matches 0 run scoreboard players operation @s skill = $random temp2
function base:random {"min":1,"max":7}
execute if score @s talent_1 matches 0 run scoreboard players operation @s talent_1 = $random temp2
function base:random {"min":1,"max":7}
execute if score @s talent_2 matches 0 run scoreboard players operation @s talent_2 = $random temp2

# 如果二天赋重复则归零，并再跑一次
execute if score @s talent_2 = @s talent_1 run scoreboard players set @s talent_2 0
execute if score @s talent_2 matches 0 run function main:state/1/ability/random