scoreboard players remove $1_single countdown 1

# 计算当前秒数 [不显示毫秒，+1 补位] | single
function base:caculate/time {unit:"sec",tick:"$1_single",source:"countdown"}
scoreboard players add $sec temp2 1

# 设置数值 | single
execute store result bossbar midsoul:1 value run scoreboard players get $1_single countdown

# 设置名称 | single
bossbar set midsoul:1 name {"translate":"ms.bossbar.1.admin","fallback":"正在进行 » %s « 管理确认","color":"light_purple","with":[{"score":{"objective":"temp2","name":"$sec"}}]}

# 设置闪烁 | single
execute if score $1_single countdown matches 7 run bossbar set midsoul:1 visible false
execute if score $1_single countdown matches 5 run bossbar set midsoul:1 visible true
execute if score $1_single countdown matches 3 run bossbar set midsoul:1 visible false
execute if score $1_single countdown matches 2 run bossbar set midsoul:1 visible true
execute if score $1_single countdown matches 1 run bossbar set midsoul:1 visible false