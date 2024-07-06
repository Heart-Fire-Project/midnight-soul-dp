# 重置
scoreboard players set $blue_count temp 0
scoreboard players set $gold_count temp 0
scoreboard players set $purple_count temp 0
scoreboard players set $gray_count temp 0

# 统计
execute as @e[tag=marker_blue,distance=..300] run scoreboard players add $blue_count temp 1
execute as @e[tag=marker_gold,distance=..300] run scoreboard players add $gold_count temp 1
execute as @e[tag=marker_purple,distance=..300] run scoreboard players add $purple_count temp 1
execute as @e[tag=marker_gray,distance=..300] run scoreboard players add $gray_count temp 1

# 输出
tellraw @s [{"translate":"ms.mark.count","fallback":"半径 300 格内的标点统计结果：","color":"#7367F0"}]
tellraw @s [{"translate":"ms.blue","fallback":"灵魂碎片","color":"blue"}," » ",{"score":{"objective":"temp","name":"$blue_count"}}]
tellraw @s [{"translate":"ms.gold","fallback":"灵魂之灯","color":"gold"}," » ",{"score":{"objective":"temp","name":"$gold_count"}}]
tellraw @s [{"translate":"ms.purple","fallback":"传送门","color":"light_purple"}," » ",{"score":{"objective":"temp","name":"$purple_count"}}]
tellraw @s [{"translate":"ms.gray","fallback":"灵魂宝物盒","color":"gray"}," » ",{"score":{"objective":"temp","name":"$gray_count"}}]