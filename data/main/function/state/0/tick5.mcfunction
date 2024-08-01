# 里程碑自动刷新
execute as @a[x=-1000,y=0,z=-1000,distance=..50] run function main:state/0/extra/milestone

# 开始游戏侦测
team join spectator @a[team=!admin,team=!prepare]
function main:state/0/starting_check with storage ms:mode
function main:state/0/bossbar with storage ms:mode