scoreboard players remove $1_single countdown 1

# 计算当前秒数 [不显示毫秒，+1 补位] | single
function base:caculate/time {unit:"sec",tick:"$1_single",source:"countdown"}
scoreboard players add $sec temp2 1

# 设置数值 | single
execute store result bossbar midsoul:2 value run scoreboard players get $1_single countdown
execute store result bossbar midsoul:3 value run scoreboard players get $1_single countdown

# 设置名称 | single
bossbar set midsoul:2 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"#52E5E7","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
bossbar set midsoul:3 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"red","with":[{"score":{"objective":"temp2","name":"$sec"}}]}

# 设置开始闪烁 | max - single
scoreboard players operation $value temp = $1_max countdown
scoreboard players operation $value temp -= $1_single countdown
execute if score $value temp matches 1 run bossbar set midsoul:2 name ""
execute if score $value temp matches 2 run bossbar set midsoul:2 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"#52E5E7","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $value temp matches 3 run bossbar set midsoul:2 name ""
execute if score $value temp matches 4 run bossbar set midsoul:2 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"#52E5E7","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $value temp matches 1 run bossbar set midsoul:3 name ""
execute if score $value temp matches 2 run bossbar set midsoul:3 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"red","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $value temp matches 3 run bossbar set midsoul:3 name "" 
execute if score $value temp matches 4 run bossbar set midsoul:3 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"red","with":[{"score":{"objective":"temp2","name":"$sec"}}]}

# 设置结束闪烁 | single
execute if score $1_single countdown matches 4 run bossbar set midsoul:2 name ""
execute if score $1_single countdown matches 3 run bossbar set midsoul:2 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"#52E5E7","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $1_single countdown matches 2 run bossbar set midsoul:2 name ""
execute if score $1_single countdown matches 1 run bossbar set midsoul:2 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"#52E5E7","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $1_single countdown matches 4 run bossbar set midsoul:3 name ""
execute if score $1_single countdown matches 3 run bossbar set midsoul:3 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"red","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
execute if score $1_single countdown matches 2 run bossbar set midsoul:3 name ""
execute if score $1_single countdown matches 1 run bossbar set midsoul:3 name {"translate":"ms.bossbar.1.select","fallback":"正在进行 » %s « 能力选择","color":"red","with":[{"score":{"objective":"temp2","name":"$sec"}}]}