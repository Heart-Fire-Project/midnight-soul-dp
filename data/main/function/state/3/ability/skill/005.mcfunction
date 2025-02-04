title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color":"#5599FF"}," » ",{"translate":"ms.skill.005","fallback":"锚定虚影"}]
playsound entity.ender_eye.launch player @a
scoreboard players add @s temp.skill 1

# 生成新锚点
summon marker ~ ~0.2 ~ {Tags:[S005_n,S005,game_entity]}
scoreboard players operation @e[tag=S005_n] player_id = @s player_id
tp @e[tag=S005_n] @s

# 试图传送至上一个锚点，并在此之后去除新锚点的 tag
scoreboard players operation $player_id temp = @s player_id
execute as @e[tag=S005,tag=!S005_n] if score @s player_id = $player_id temp run tag @s add S005_t
tp @s @e[tag=S005_t,limit=1]
execute if entity @e[tag=S005_t] run particle falling_obsidian_tear ~ ~1.2 ~ 0.2 0.3 0.2 3 256 force @a
execute if entity @e[tag=S005_t] run playsound entity.enderman.teleport player @s 0 1000000 0 1000000
kill @e[tag=S005_t]
tag @e remove S005_n

# 重置冷却
scoreboard players set @s skill_tick 18000