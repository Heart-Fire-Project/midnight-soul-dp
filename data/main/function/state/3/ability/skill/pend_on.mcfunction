scoreboard players operation @s[scores={skill_tick=0..}] skill_tick -= $cooldown_speed setting
scoreboard players set @s[scores={skill_tick=..0}] skill_tick 0

execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71001}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/001
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{"id":71002}}}]},scores={skill_tick=0}] run function main:state/3/ability/skill/002