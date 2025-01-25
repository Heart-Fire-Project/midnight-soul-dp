title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.skill.over","fallback":"技能终止","color":"#5599FF"}," 🔁 ",{"translate":"ms.skill.002","fallback":"灵灯之筑"}]
tag @s remove skill_on

# 给予效果
execute unless entity @a[team=soul,scores={state=1}] run effect give @p[team=guardian] glowing 15 0
execute unless entity @a[team=soul,scores={state=1}] run effect give @p[team=guardian] slowness 15 4
execute unless entity @a[team=soul,scores={state=1}] at @p[team=guardian] run playsound block.anvil.land player @a
execute if entity @a[team=soul,scores={state=1}] run scoreboard players add @s temp.heal 1
execute as @r[team=soul,scores={state=1}] run kill @e[tag=gold,limit=1]
execute as @r[team=soul,scores={state=1}] run function main:state/3/player/healed

# 重置冷却
scoreboard players set @s skill_tick 15000