title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"#5599FF"}," » ",{"translate":"ms.skill.004","fallback":"铤而走险"}]
playsound block.brewing_stand.brew player @s 0 1000000 0 1000000
scoreboard players add @s temp.skill 1
tag @s add skill_on

# 初始化 | 快捷栏动画在持续效果里，粒子效果在判定里
tag @s remove S004_a
tag @s remove S004_b

# 判定：反向跑团
function base:random {min:"1",max:"100"}
execute if score @s skill_004 < $random temp2 run function main:state/3/ability/skill/004a
execute if score @s skill_004 >= $random temp2 run function main:state/3/ability/skill/004b

# 设置计时
scoreboard players set @s skill_tick -2400

# 提升失败概率
scoreboard players add @s[scores={skill_004=..39}] skill_004 7