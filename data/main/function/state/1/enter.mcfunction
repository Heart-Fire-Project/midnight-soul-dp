# 状态 1 - 初始
scoreboard players set $state data 1
tag @a remove game_player
tag @a remove play_check
tag @a remove ability_locked

# 入场
clear @a[team=!admin]
execute as @a[team=prepare] run function main:state/1/player_enter/prepare
execute as @a[tag=!game_player,team=!admin] run function main:state/1/player_enter/spectator
execute as @a[team=admin] run function main:state/1/player_enter/admin

# 计算该部分时间
scoreboard players set $1_tick countdown 280
execute as @a[team=admin] run scoreboard players add $1_tick countdown 120
execute if score $ability_apply setting matches 1..5 run scoreboard players add $1_tick countdown 800