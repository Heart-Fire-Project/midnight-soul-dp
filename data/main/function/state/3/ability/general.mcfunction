# 技能
title @a[team=soul,scores={skill_tick=-2370,skill=4,setting.ability_actionbar=2}] actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"white"}," » ",{"translate":"ms.skill.004","fallback":"铤而走险"}]
title @a[tag=S004_a,scores={skill_tick=-2350,skill=4,setting.ability_actionbar=1..}] actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"green"}," » ",{"translate":"ms.skill.004","fallback":"铤而走险"}]
title @a[tag=S004_b,scores={skill_tick=-2350,skill=4,setting.ability_actionbar=1..}] actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"red"}," » ",{"translate":"ms.skill.004","fallback":"铤而走险"}]

# 天赋
effect give @a[scores={talent_1=3,state=0},team=soul,tag=talent_1_on] speed 1 0
effect give @a[scores={talent_2=3,state=0},team=soul,tag=talent_2_on] speed 1 0
execute at @a[scores={talent_1=4,state=0},tag=talent_1_on,team=guardian] run effect give @a[team=soul,distance=40..,scores={state=0}] glowing 1 0
execute at @a[scores={talent_2=4,state=0},tag=talent_2_on,team=guardian] run effect give @a[team=soul,distance=40..,scores={state=0}] glowing 1 0

# 宝物
execute at @e[tag=I5] positioned ^ ^1 ^2 as @a[team=guardian,distance=..3] at @s run function main:state/3/ability/item/5t
execute at @a[tag=item_on,scores={item=6,state=0}] run particle cloud ~ ~ ~ 0.3 0 0.3 0.1 20 force @a