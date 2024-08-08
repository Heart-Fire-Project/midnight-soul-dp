# 基础数值设定
scoreboard players set @s leave_game 0
team join spectator @s
attribute @s generic.movement_speed base set 0.1

# 去除游戏内标签
tag @s remove hidden_parkour
tag @s remove stat_query
tag @s remove quering
tag @s remove game_player
tag @s remove join_check
tag @s remove ability_check

# 重新设置各个 Bossbar
execute if score $state data matches 0 run bossbar set midsoul:info players @a
execute if score $state data matches 1 run bossbar set midsoul:info players @a[team=spectator]
execute if score $state data matches 2 run bossbar set midsoul:info players @a[team=spectator]

# 按照状态进行不同入场流程
scoreboard players reset @s music
execute if score $state data matches 0 run function main:state/0/player_enter
execute if score $state data matches 1 run function main:state/1/player_enter/spectator
execute if score $state data matches 2..6 run gamemode spectator @s
execute if score $state data matches 2..6 run tp @s @r[limit=1,tag=game_player]
execute if score $state data matches 2..6 run tellraw @s [{"text":"» ","bold":true},{"translate":"ms.info.mid_enter","fallback":"游戏正在进行中，请稍作等候……","bold":false}]