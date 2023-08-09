# 入场
tag @e[tag=marker_gold,tag=!enter_chosen,limit=1,sort=random] add map_enter
tag @e[tag=map_enter,limit=1,sort=random] add enter_chosen
tp @s @e[tag=map_enter,limit=1]
tag @e[tag=map_enter] remove map_enter
tag @e remove enter_chosen

# 赋予状态
effect clear @s
effect give @s darkness 14 6 true
effect give @s slowness 14 9 true
effect give @s levitation 14 199 true
effect give @s glowing 14 6 true
effect give @s bad_omen 14 6

# 改变模式
gamemode adventure @s

# 教学
tellraw @s[tag=!protect_tr] [{"text": " » ","bold": true,"color": "red"},{"translate":"ms.tutorial.protect.enter","fallback": "在正式开始之前, 不妨再看看技能描述?","bold": false}]