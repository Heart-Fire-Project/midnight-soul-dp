title @s actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.4","fallback":"相位替换"}]
playsound entity.enderman.teleport player @s 0 1000000 0 1000000
particle glow_squid_ink ~ ~1 ~ 0.2 0.3 0.2 0.2 128 force @a
scoreboard players set @s item 0
scoreboard players add @s temp_item 1

# 寻找幸运观众
tag @a[limit=1,sort=furthest,team=soul] add I4s
playsound entity.enderman.teleport player @a[tag=I4s] 0 1000000 0 1000000
execute at @a[tag=I4s] run particle glow_squid_ink ~ ~1 ~ 0.2 0.3 0.2 0.2 128 force @a

# 互！换！位！置！
summon marker ~ ~ ~ {Tags:[I4,game_entity]}
tp @e[tag=I4] @s
tp @s @a[limit=1,tag=I4s]
tp @a[limit=1,tag=I4s] @e[limit=1,tag=I4]
tag @a remove I4s
kill @e[tag=I4]

# 自我安慰
execute unless entity @a[team=soul,distance=0.001..] run tellraw @s [{"text":"» ","color":"#33FFAA","bold":true},{"translate":"ms.info.item.4","fallback":"额……你已经和自己交换了位置！","bold":false}]