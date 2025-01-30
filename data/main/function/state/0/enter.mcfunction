# 状态 0 - 大厅
scoreboard players set $state data 0
execute as @a[team=!admin] run function main:state/0/player_enter

# Bossbar
bossbar set midsoul:info style notched_10
bossbar set midsoul:info players @a
bossbar set midsoul:1 players
bossbar set midsoul:2 players
bossbar set midsoul:3 players
bossbar set midsoul:4 players
bossbar set midsoul:5 players
bossbar set midsoul:6 players
bossbar set midsoul:7 players
bossbar set midsoul:8 players
bossbar set midsoul:9 players
bossbar set midsoul:10 players
bossbar set midsoul:heed players
bossbar set midsoul:warn players

# 刷新
function main:state/0/refresh/block
function main:state/0/refresh/sign
function main:state/0/refresh/entity

# 设置变量组
execute if score $mode setting matches 1 run data merge storage ms:mode {start:"5",cancel:"4"}
execute if score $mode setting matches 2 run data merge storage ms:mode {start:"2",cancel:"1"}

# 计分板
scoreboard objectives setdisplay list stat.level
scoreboard objectives setdisplay below_name stat.level
scoreboard objectives setdisplay sidebar
scoreboard players set $0_start countdown 1010000