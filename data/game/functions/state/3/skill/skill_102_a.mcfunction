title @s actionbar [{"translate":"ms.skill.active","fallback":"技能触发","color": "red"}," » ",{"translate":"ms.skill.102","fallback":"灵力掌控"}]
scoreboard players add @s stat_temp_skill 1

playsound entity.illusioner.cast_spell player @s
particle dust_color_transition 0.3 0.7 1 1 1 1 0 ~ ~0.2 ~ 0.1 0.1 0.1 1 10 force @a

tag @s add skill_102_active
scoreboard players reset $skill_102 temp
schedule function game:state/3/skill/skill_102_b 30s replace

scoreboard players set @s skill_cd 18000
function game:state/3/refresh_inventory
item replace entity @s weapon.offhand with air