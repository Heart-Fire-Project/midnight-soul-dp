title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.104","fallback":"隐于迷雾"}]
playsound entity.evoker.cast_spell player @s
particle spit ~ ~1 ~ 0.2 0.1 0.2 0.7 60 force @a
scoreboard players add @s temp.talent 1

# 给予触发时效果
effect give @a[team=soul] darkness 5 0
effect give @s invisibility infinite 6
tag @s[scores={talent_1=4}] add talent_1_on
tag @s[scores={talent_2=4}] add talent_2_on