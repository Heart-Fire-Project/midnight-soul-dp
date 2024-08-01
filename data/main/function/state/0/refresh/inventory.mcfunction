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
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
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
execute unless score @s extra_headset matches 1..3 run item replace entity @s armor.head with air
execute if entity @s[scores={extra_headset=1..3},tag=invisibility] run item replace entity @s armor.head with air
item replace entity @s[scores={extra_headset=1},tag=!invisibility] armor.head with end_rod[custom_model_data=73201,hide_tooltip={}]
item replace entity @s[scores={extra_headset=2},tag=!invisibility] armor.head with lightning_rod[custom_model_data=73202,hide_tooltip={}]
item replace entity @s[scores={extra_headset=3},tag=!invisibility] armor.head with amethyst_cluster[custom_model_data=73203,hide_tooltip={}]
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

# 准备侦测
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70000}}]}] run team join prepare
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70000}}]}] run playsound minecraft:entity.experience_orb.pickup player @s 0 1000000 0 1000000 0.1 1
execute if data storage ms:setting {gamelock:false} if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:gray_dye"}]}] run function main:state/0/starting_check with storage ms:mode
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70001}}]}] run team join spectator
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_model_data":70001}}]}] run playsound minecraft:entity.experience_orb.pickup player @s 0 1000000 0 1000000 1 1
execute if data storage ms:setting {gamelock:false} if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:purple_dye"}]}] run function main:state/0/starting_check with storage ms:mode

# 刷新物品
item replace entity @s[team=spectator] hotbar.8 with gray_dye[item_name='{"translate":"ms.lobby.spectator","fallback":"未准备 - 按 [%s] 准备","italic":false,"color":"gray","with":[{"keybind":"key.swapOffhand"}]}',custom_model_data=70000,hide_additional_tooltip={}]
item replace entity @s[team=prepare] hotbar.8 with light_blue_dye[item_name='{"translate":"ms.lobby.prepare","fallback":"已准备 - 按 [%s] 取消","italic":false,"color":"aqua","with":[{"keybind":"key.swapOffhand"}]}',custom_model_data=70001,hide_additional_tooltip={}]

item replace entity @s weapon.offhand with air