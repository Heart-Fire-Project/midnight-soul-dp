# 特殊效果
# 诅咒
execute at @e[tag=cursed_gray] run function main:state/3/event/cursed/surround

# 不允许离开场地
execute as @a[gamemode=spectator] at @s unless entity @e[tag=game_entity,distance=..100] run tp @s @r[tag=game_player]