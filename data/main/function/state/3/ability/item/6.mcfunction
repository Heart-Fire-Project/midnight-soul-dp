title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.6","fallback":"太空体验"}]
playsound entity.firework_rocket.launch player @a
tag @s add item_on
scoreboard players add @s temp.item 1

# 给予效果
attribute @s gravity base set 0

# 设置计时
scoreboard players set @s item_tick -1400