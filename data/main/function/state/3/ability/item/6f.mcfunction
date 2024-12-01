title @s[scores={setting.ability_actionbar=1..}] actionbar [{"translate":"ms.item.over","fallback":"宝物终止","color":"#33FFAA"}," 🔁 ",{"translate":"ms.item.6","fallback":"太空体验"}]
tag @s remove item_on
scoreboard players set @s item 0

# 恢复状态
attribute @s gravity base set 0.08