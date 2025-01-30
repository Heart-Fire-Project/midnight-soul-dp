# 技能
execute as @a[team=soul,scores={skill_tick=-2370..-2350,skill=4}] run function main:state/3/ability/skill/004t
execute at @e[tag=S005] run particle minecraft:portal ~ ~0.2 ~ 0.2 0.3 0.2 1 4 force @a[team=soul]
execute as @a[team=guardian,scores={skill=2},tag=skill_on] at @s run function main:state/3/ability/skill/102t
execute as @a[scores={skill_103=1..}] run function main:state/3/ability/skill/103t

# 天赋
effect give @a[scores={talent_1=3,state=0},team=soul,tag=talent_1_on] speed 1 0
effect give @a[scores={talent_2=3,state=0},team=soul,tag=talent_2_on] speed 1 0
execute at @a[scores={talent_1=4,state=0},tag=talent_1_on,team=guardian] run effect give @a[team=soul,distance=40..,scores={state=0}] glowing 1 0
execute at @a[scores={talent_2=4,state=0},tag=talent_2_on,team=guardian] run effect give @a[team=soul,distance=40..,scores={state=0}] glowing 1 0

# 宝物
execute at @e[tag=I5] positioned ^ ^1 ^2 as @a[team=guardian,distance=..3] at @s run function main:state/3/ability/item/5t
execute at @a[tag=item_on,scores={item=6,state=0}] run particle cloud ~ ~ ~ 0.3 0 0.3 0.1 20 force @a