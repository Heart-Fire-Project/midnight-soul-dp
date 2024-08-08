# 状态 2 - 入场
scoreboard players set $state data 2

# 地图初始化
function main:state/2/map_init

# Bossbar
bossbar set midsoul:info style notched_12
bossbar set midsoul:info max 120
bossbar set midsoul:2 style notched_12
bossbar set midsoul:2 max 120
bossbar set midsoul:3 style notched_12
bossbar set midsoul:3 max 120

# 计分板
scoreboard players set $2_starting countdown 120

# 设置标题
title @a times 3 54 2
title @a title ""
title @a[team=!admin] subtitle [{"text":"» ","color":"blue","bold":true},{"translate":"ms.title.2.starting","fallback":"游戏即将开始","bold":false},{"text":" «","bold":true}]

# 玩家入场
function main:state/2/player_enter/general