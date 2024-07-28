# 开门大吉
fill -6 16 -6 -7 17 -7 air
scoreboard players set $0_parkour countdown 5

# 完成转换
scoreboard players operation @s temp2 = @s parkour_tick
scoreboard players set @s state 0
function main:state/0/parkour/time_format {source:"parkour_tick"}

# 完成特效
playsound entity.firework_rocket.blast player @s 0 1000000 0 1000000
execute at @s anchored eyes positioned ^ ^ ^0.1 run particle flash ~ ~ ~ 0 0 0 1 1 force @s

# 停止计时
title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | ",{"storage":"ms:string","nbt":"result"}]

# 展示成绩
tellraw @s [{"text":"» ","bold":true,"color":"green"},{"translate":"ms.parkour.5","fallback":"大厅跑酷完成","bold":false}]
tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » ",{"storage":"ms:string","nbt":"result"}]
execute if entity @s[scores={stat_parkour_5=1..}] run function main:state/0/parkour/time_format {source:"stat_parkour_5"}
execute if score @s stat_parkour_5 matches ..0 run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » ","--:--.--"]
execute if score @s stat_parkour_5 matches 1.. run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » ",{"storage":"ms:string","nbt":"result"}]

# 个人最佳
execute if score @s temp2 < @s stat_parkour_5 run scoreboard players set @s parkour_tick -52
execute if score @s stat_parkour_5 matches ..0 run scoreboard players set @s parkour_tick -52
execute if score @s parkour_tick matches -52 run scoreboard players operation @s stat_parkour_5 = @s temp2