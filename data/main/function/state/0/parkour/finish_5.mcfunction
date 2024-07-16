# 开门大吉
fill -6 16 -6 -7 17 -7 air
scoreboard players set $0_parkour countdown 1
scoreboard players operation @s temp = @s parkour_tick
scoreboard players set @s state 0
execute if entity @s run function base:caculate/time {unit:"min",tick:"@s",source:"temp"}

# 完成特效
playsound entity.firework_rocket.blast player @s 0 1000000 0 1000000
execute at @s anchored eyes positioned ^ ^ ^0.1 run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @s

# 停止计时
execute if score $min temp2 matches 10.. if score $sec temp2 matches 10.. if score $ms temp2 matches 10.. run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | ",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches ..9 if score $ms temp2 matches 10.. run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | ",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches 10.. if score $ms temp2 matches ..9 run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | ",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches ..9 if score $ms temp2 matches ..9 run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | ",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches 10.. if score $ms temp2 matches 10.. run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | 0",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches ..9 if score $ms temp2 matches 10.. run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | 0",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches 10.. if score $ms temp2 matches ..9 run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | 0",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches ..9 if score $ms temp2 matches ..9 run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | 0",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]

# 展示成绩
tellraw @s [{"text":" » ","bold":true,"color":"green"},{"translate":"ms.parkour.5","fallback":"大厅跑酷完成","bold":false}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches 10.. if score $ms temp2 matches 10.. run tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » ",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches ..9 if score $ms temp2 matches 10.. run tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » ",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches 10.. if score $ms temp2 matches ..9 run tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » ",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches ..9 if score $ms temp2 matches ..9 run tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » ",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches 10.. if score $ms temp2 matches 10.. run tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » 0",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches ..9 if score $ms temp2 matches 10.. run tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » 0",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches 10.. if score $ms temp2 matches ..9 run tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » 0",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches ..9 if score $ms temp2 matches ..9 run tellraw @s ["   ",{"translate":"ms.parkour.time","fallback":"本次用时"}," » 0",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if entity @s[scores={stat_parkour_5=1..}] run function base:caculate/time {unit:"min",tick:"@s",source:"stat_parkour_5"}
execute if score @s stat_parkour_5 matches ..0 run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » ","--:--.--"]
execute if score @s stat_parkour_5 matches 1.. if score $min temp2 matches 10.. if score $sec temp2 matches 10.. if score $ms temp2 matches 10.. run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » ",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score @s stat_parkour_5 matches 1.. if score $min temp2 matches 10.. if score $sec temp2 matches ..9 if score $ms temp2 matches 10.. run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » ",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score @s stat_parkour_5 matches 1.. if score $min temp2 matches 10.. if score $sec temp2 matches 10.. if score $ms temp2 matches ..9 run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » ",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score @s stat_parkour_5 matches 1.. if score $min temp2 matches 10.. if score $sec temp2 matches ..9 if score $ms temp2 matches ..9 run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » ",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score @s stat_parkour_5 matches 1.. if score $min temp2 matches ..9 if score $sec temp2 matches 10.. if score $ms temp2 matches 10.. run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » 0",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score @s stat_parkour_5 matches 1.. if score $min temp2 matches ..9 if score $sec temp2 matches ..9 if score $ms temp2 matches 10.. run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » 0",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score @s stat_parkour_5 matches 1.. if score $min temp2 matches ..9 if score $sec temp2 matches 10.. if score $ms temp2 matches ..9 run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » 0",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score @s stat_parkour_5 matches 1.. if score $min temp2 matches ..9 if score $sec temp2 matches ..9 if score $ms temp2 matches ..9 run tellraw @s ["   ",{"translate":"ms.parkour.pb","fallback":"个人最佳"}," » 0",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]

# 个人最佳
execute if score @s temp < @s stat_parkour_5 run scoreboard players set @s parkour_tick -40
execute if score @s temp matches ..0 run scoreboard players set @s parkour_tick -40