scoreboard players remove $1_process countdown 1

# 1199 | 管理员确认 开始
execute if score $1_process countdown matches 1199 run scoreboard players set $1_admin countdown 120
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 color pink
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 max 120
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 style notched_6
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 players @a[team=!spectator]

# 1199 / 1080 | 管理员确认 中途
execute if score $1_process countdown matches 1080..1199 run function main:state/1/bossbar/admin
execute if score $1_process countdown matches 1080..1199 as @a[team=admin,scores={interact_check=5000},tag=!join_check] run function main:state/1/player_enter/transfer
execute if score $1_process countdown matches 1080..1199 run tag @a[team=admin,scores={interact_check=5001},tag=!join_check] add join_check
execute if score $1_process countdown matches 1140 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 1000000
execute if score $1_process countdown matches 1120 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 1000000
execute if score $1_process countdown matches 1100 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 1000000
execute unless entity @a[team=admin,tag=!join_check] if score $1_process countdown matches 1081.. run scoreboard players set $1_process countdown 1080

# 1080 | 管理员确认 结束
execute if score $1_process countdown matches 1080 run bossbar set midsoul:1 players
execute if score $1_process countdown matches 1080 run bossbar set midsoul:1 visible true
execute if score $1_process countdown matches 1080 run playsound block.note_block.iron_xylophone player @a[team=!spectator] 0 1000000 0 1000000
execute if score $1_process countdown matches 1080 run scoreboard players operation $1_tick countdown -= $1_admin countdown