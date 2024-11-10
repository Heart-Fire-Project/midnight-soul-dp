title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.2","fallback":"共鸣引力"}]
playsound block.sculk.charge player @a
particle sculk_charge{roll:6.28} ~ ~0.2 ~ 0.2 0.2 0.2 0 8 force @a
scoreboard players set @s item 0
scoreboard players add @s temp_item 1

# 传送碎片
tp @e[tag=blue,distance=..15] ~ ~0.2 ~

# 生成额外碎片
summon item ~ ~0.2 ~ {Tags:[game_entity,new_blue,blue],Item:{id:"echo_shard",count:1},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
execute as @e[tag=new_blue] run team join shard @s
execute as @e[tag=new_blue] run tag @s remove new_blue