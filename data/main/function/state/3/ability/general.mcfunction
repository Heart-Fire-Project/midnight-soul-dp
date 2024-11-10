# 宝物
execute at @e[tag=I5] positioned ^ ^1 ^2 as @a[team=guardian,distance=..3] at @s run function main:state/3/ability/item/5g
execute at @a[tag=item_on,scores={item=6}] run particle cloud ~ ~ ~ 0.3 0 0.3 0.1 20 force @a