title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.skill.over","fallback":"技能终止","color":"red"}," 🔁 ",{"translate":"ms.skill.105","fallback":"雾影阴霾"}]
playsound minecraft:entity.player.attack.sweep player @a
particle minecraft:sweep_attack ~ ~1 ~ 0.7 0.3 0.7 1 16
tag @s remove skill_on

# 触发击中效果，至多记录一次击中
function main:lib/player/hit
execute unless entity @a[team=soul,distance=..2,scores={state=0}] run scoreboard players remove @s temp.hit 1
execute as @a[team=soul,distance=..2,scores={state=0}] run damage @s 10
execute as @a[team=soul,distance=..2,scores={state=0}] run function main:lib/player/hurt

# 重置冷却
scoreboard players set @s skill_tick 15000