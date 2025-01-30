title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"red"}," » ",{"translate":"ms.skill.104","fallback":"恶灵诅咒"}]
playsound entity.ghast.scream player @s
particle trial_omen ~ ~0.2 ~ 0.2 0.3 0.2 1 12 force @a
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 施加诅咒
tag @e[tag=gray,tag=!cursed_gray,limit=1] add cursed_gray
execute unless entity @e[tag=gray,tag=!cursed_gray,limit=1] run function main:state/3/ability/skill/104a

# 给予效果
scoreboard players reset $skill_104 temp
execute as @e[tag=cursed_gray] run scoreboard players add $skill_104 temp 1
scoreboard players add $skill_104 temp 1
execute store result storage ms:temp num int 1 run scoreboard players get $skill_104 temp
function main:state/3/ability/skill/104b with storage ms:temp

# 设置计时
scoreboard players set @s skill_tick -2400