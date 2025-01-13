title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.talent.active","fallback":"天赋触发","color":"gold"}," » ",{"translate":"ms.talent.102","fallback":"火冒三丈"}]
playsound entity.ravager.roar player @s
particle angry_villager ~ ~1.8 ~ 0.3 0.1 0.3 1 4 force @a
scoreboard players add @s temp.talent 1

# 给予效果
effect give @a[team=soul] glowing 3 0
effect give @a[team=soul] slowness 3 0