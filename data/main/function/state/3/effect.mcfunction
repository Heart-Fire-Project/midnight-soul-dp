# 消除技能效果是刻意的游戏设计
execute as @a[team=soul] run attribute @s generic.movement_speed base set 0.10
execute as @a[team=guardian] run attribute @s generic.movement_speed base set 0.12
execute if score $3_gametime countdown matches 18001.. as @a[team=guardian] run attribute @s generic.movement_speed base set 0.14
attribute @s generic.attack_damage base set 0
attribute @s generic.jump_strength base set 0.42

effect clear @s
effect give @s saturation infinite 10 true
effect give @s[scores={state=1}] darkness infinite 49 true
effect give @s[scores={state=1}] resistance infinite 49 true
attribute @s[scores={state=1}] generic.movement_speed base set 0
attribute @s[scores={state=1}] generic.jump_strength base set 0