# 拘束玩家们
tp @a[tag=game_player] 0 -5 0
tp @a[team=spectator] 0 777 0
execute as @a[team=spectator] at @s anchored eyes positioned ^ ^ ^7 run particle end_rod ~ ~ ~ 0 0 0 0 1

# 每刻一次刷进程
function main:state/1/process
function main:state/1/bossbar/spectator