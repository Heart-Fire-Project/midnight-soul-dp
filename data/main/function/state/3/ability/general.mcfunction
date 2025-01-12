# 天赋
effect give @a[scores={talent_1=3},team=soul,tag=talent_1_on] speed 1 0
effect give @a[scores={talent_2=3},team=soul,tag=talent_2_on] speed 1 0

# 宝物
execute at @e[tag=I5] positioned ^ ^1 ^2 as @a[team=guardian,distance=..3] at @s run function main:state/3/ability/item/5t
execute at @a[tag=item_on,scores={item=6}] run particle cloud ~ ~ ~ 0.3 0 0.3 0.1 20 force @a