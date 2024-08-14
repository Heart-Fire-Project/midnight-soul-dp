scoreboard players remove $2_starting countdown 1

# 计算当前秒数 [不显示毫秒，+1 补位]
function base:caculate/time {unit:"sec",tick:"$2_starting",source:"countdown"}
scoreboard players add $sec temp2 1

# 设置数值
execute store result bossbar midsoul:info value run scoreboard players get $2_starting countdown
execute store result bossbar midsoul:2 value run scoreboard players get $2_starting countdown
execute store result bossbar midsoul:3 value run scoreboard players get $2_starting countdown

# 设置名称
bossbar set midsoul:info name {"translate":"ms.bossbar.2.starting","fallback":"即将 » %s « 开始","color":"white","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
bossbar set midsoul:2 name {"translate":"ms.bossbar.2.starting","fallback":"即将 » %s « 开始","color":"#52E5E7","with":[{"score":{"objective":"temp2","name":"$sec"}}]}
bossbar set midsoul:3 name {"translate":"ms.bossbar.2.starting","fallback":"即将 » %s « 开始","color":"red","with":[{"score":{"objective":"temp2","name":"$sec"}}]}

# 闪烁
execute if score $2_starting countdown matches 7 run scoreboard objectives setdisplay sidebar
execute if score $2_starting countdown matches 5 run scoreboard objectives setdisplay sidebar info
execute if score $2_starting countdown matches 3 run scoreboard objectives setdisplay sidebar
execute if score $2_starting countdown matches 2 run scoreboard objectives setdisplay sidebar info
execute if score $2_starting countdown matches 1 run scoreboard objectives setdisplay sidebar
execute if score $2_starting countdown matches 7 run bossbar set midsoul:info visible false
execute if score $2_starting countdown matches 5 run bossbar set midsoul:info visible true
execute if score $2_starting countdown matches 3 run bossbar set midsoul:info visible false
execute if score $2_starting countdown matches 2 run bossbar set midsoul:info visible true
execute if score $2_starting countdown matches 7 run bossbar set midsoul:2 visible false
execute if score $2_starting countdown matches 5 run bossbar set midsoul:2 visible true
execute if score $2_starting countdown matches 3 run bossbar set midsoul:2 visible false
execute if score $2_starting countdown matches 2 run bossbar set midsoul:2 visible true
execute if score $2_starting countdown matches 1 run bossbar set midsoul:2 players
execute if score $2_starting countdown matches 7 run bossbar set midsoul:3 visible false
execute if score $2_starting countdown matches 5 run bossbar set midsoul:3 visible true
execute if score $2_starting countdown matches 3 run bossbar set midsoul:3 visible false
execute if score $2_starting countdown matches 2 run bossbar set midsoul:3 visible true
execute if score $2_starting countdown matches 1 run bossbar set midsoul:3 players

# 时间轴
execute if score $2_starting countdown matches 60 run playsound block.note_block.harp player @a[team=!admin] 0 1000000 0 1000000
execute if score $2_starting countdown matches 40 run playsound block.note_block.harp player @a[team=!admin] 0 1000000 0 1000000
execute if score $2_starting countdown matches 20 run playsound block.note_block.harp player @a[team=!admin] 0 1000000 0 1000000
execute if score $2_starting countdown matches 0 run function main:state/3/enter with storage ms:map