scoreboard players add @s[scores={skill_tick=..-1}] skill_tick 10

execute as @s[scores={skill_tick=0..,skill=1},team=soul] run function main:state/3/ability/skill/001f
execute as @s[scores={skill_tick=0..,skill=2},team=soul] run function main:state/3/ability/skill/002f
execute as @s[scores={skill_tick=0..,skill=4},team=soul] run function main:state/3/ability/skill/004f