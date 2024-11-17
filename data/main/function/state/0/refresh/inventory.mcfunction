# 清空背包
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air

# 装备栏
execute unless score @s extra.headset matches 1..3 run item replace entity @s armor.head with air
execute if entity @s[scores={extra.headset=1..3},tag=invisibility] run item replace entity @s armor.head with air
item replace entity @s[scores={extra.headset=1},tag=!invisibility] armor.head with end_rod[custom_model_data=73201,hide_tooltip={}]
item replace entity @s[scores={extra.headset=2},tag=!invisibility] armor.head with lightning_rod[custom_model_data=73202,hide_tooltip={}]
item replace entity @s[scores={extra.headset=3},tag=!invisibility] armor.head with amethyst_cluster[custom_model_data=73203,hide_tooltip={}]
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# 物品栏
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air

# 改动侦测
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70000}}]}] run function main:lib/event/prepare
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70001}}]}] run function main:lib/event/spectator
execute as @s[nbt=!{Inventory:[{Slot:20b}]}] run function main:lib/event/personal_setting {setting:"ingame_score",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:21b}]}] run function main:lib/event/personal_setting {setting:"interact_hint",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:22b}]}] run function main:lib/event/personal_setting {setting:"ability_actionbar",limit:"3"}
execute as @s[nbt=!{Inventory:[{Slot:23b}]}] run function main:lib/event/personal_setting {setting:"detailed_result",limit:"2"}
execute as @s[nbt=!{Inventory:[{Slot:24b}]}] run function main:lib/event/personal_setting {setting:"ingame_tip",limit:"2"}

# 刷新物品
item replace entity @s[team=spectator] hotbar.8 with gray_dye[item_name='{"translate":"ms.lobby.spectator","fallback":"未准备 - 按 [%s] 准备","italic":false,"color":"gray","with":[{"keybind":"key.swapOffhand"}]}',custom_model_data=70000,hide_additional_tooltip={}]
item replace entity @s[team=prepare] hotbar.8 with light_blue_dye[item_name='{"translate":"ms.lobby.prepare","fallback":"已准备 - 按 [%s] 取消","italic":false,"color":"aqua","with":[{"keybind":"key.swapOffhand"}]}',custom_model_data=70001,hide_additional_tooltip={}]
item replace block 0 -7 0 container.11 with ender_eye
item replace block 0 -7 0 container.12 with book
execute if score @s setting.ability_actionbar matches 2 run item replace block 0 -7 0 container.13 with emerald_block
execute if score @s setting.ability_actionbar matches 1 run item replace block 0 -7 0 container.13 with honey_block
execute if score @s setting.ability_actionbar matches 0 run item replace block 0 -7 0 container.13 with red_stained_glass
item replace block 0 -7 0 container.14 with paper
item replace block 0 -7 0 container.15 with light[block_state={level:"7"}]
execute if score @s setting.ingame_score matches 0 run item replace entity @s inventory.11 from block 0 -7 0 container.11 main:setting/ingame_score.0
execute if score @s setting.ingame_score matches 1 run item replace entity @s inventory.11 from block 0 -7 0 container.11 main:setting/ingame_score.1
execute if score @s setting.interact_hint matches 0 run item replace entity @s inventory.12 from block 0 -7 0 container.12 main:setting/interact_hint.0
execute if score @s setting.interact_hint matches 1 run item replace entity @s inventory.12 from block 0 -7 0 container.12 main:setting/interact_hint.1
execute if score @s setting.ability_actionbar matches 0 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_actionbar.0
execute if score @s setting.ability_actionbar matches 1 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_actionbar.1
execute if score @s setting.ability_actionbar matches 2 run item replace entity @s inventory.13 from block 0 -7 0 container.13 main:setting/ability_actionbar.2
execute if score @s setting.detailed_result matches 0 run item replace entity @s inventory.14 from block 0 -7 0 container.14 main:setting/detailed_result.0
execute if score @s setting.detailed_result matches 1 run item replace entity @s inventory.14 from block 0 -7 0 container.14 main:setting/detailed_result.1
execute if score @s setting.ingame_tip matches 0 run item replace entity @s inventory.15 from block 0 -7 0 container.15 main:setting/ingame_tip.0
execute if score @s setting.ingame_tip matches 1 run item replace entity @s inventory.15 from block 0 -7 0 container.15 main:setting/ingame_tip.1


item replace entity @s weapon.offhand with air