title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.item.over","fallback":"宝物终止","color":"#33FFAA"}," 🔁 ",{"translate":"ms.item.1","fallback":"无懈可击"}]
playsound item.armor.equip_iron player @a
tag @s remove item_on
scoreboard players set @s item 0

# 人为清除
effect clear @s resistance