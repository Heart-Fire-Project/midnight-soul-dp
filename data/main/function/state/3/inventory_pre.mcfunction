# 刷新物品栏 - 设置 storage 前置
execute store result storage ms:inventory item short 1 run scoreboard players get @s item
execute store result storage ms:inventory skill short 1 run scoreboard players get @s skill
execute store result storage ms:inventory talent_1 short 1 run scoreboard players get @s talent_1
execute store result storage ms:inventory talent_2 short 1 run scoreboard players get @s talent_2

execute store result storage ms:inventory S004 short 1 run scoreboard players get @s skill_004
execute store result storage ms:inventory T007 short 1 run scoreboard players get $talent_007 data
execute store result storage ms:inventory S102 short 1 run scoreboard players get @s skill_102
execute store result storage ms:inventory T107 short 1 run scoreboard players get @s talent_107
execute if data storage ms:inventory {"S004":0s} run data modify storage ms:inventory S004 set value 1s
execute if data storage ms:inventory {"S102":0s} run data modify storage ms:inventory S102 set value 1s
execute if data storage ms:inventory {"T107":0s} run data modify storage ms:inventory T107 set value 1s

scoreboard players operation $tick temp2 = @s talent_1_tick
scoreboard players operation $tick temp2 /= #10 data
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp2"}
scoreboard players add $sec temp2 1
execute store result storage ms:inventory talent_1_tick short 1 run scoreboard players get $sec temp2

scoreboard players operation $tick temp2 = @s talent_2_tick
scoreboard players operation $tick temp2 /= #10 data
function base:caculate/time {unit:"sec",tick:"$tick",source:"temp2"}
scoreboard players add $sec temp2 1
execute store result storage ms:inventory talent_2_tick short 1 run scoreboard players get $sec temp2

execute store result storage ms:inventory weapon short 1 run scoreboard players get @s extra_weapon

function main:state/3/inventory with storage ms:inventory