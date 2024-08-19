# 计算剩余时间
scoreboard players operation $tick temp = $3_gametime countdown
scoreboard players operation $tick temp -= #18000 data
function base:caculate/time {tick:"$tick",source:"temp",unit:"sec"}

# 设置 Bossbar 值
execute store result bossbar midsoul:info value run scoreboard players get $tick temp
execute store result bossbar midsoul:heed value run scoreboard players get $tick temp
execute store result bossbar midsoul:warn value run scoreboard players get $tick temp

# 设置 Bossbar 名 | 不显示毫秒，+1 补位
scoreboard players operation $sec temp2 -= #40 data
scoreboard players operation $sec temp2 *= #-1 data
bossbar set midsoul:info name [{"text":"❖   ","color":"aqua"},{"translate":"ms.bossbar.3.emerge","fallback":"传送门形成"}," » ",{"score":{"objective":"temp2","name":"$sec"},"color":"blue"},"   ❖"]
bossbar set midsoul:heed name [{"text":"❖   ","color":"yellow"},{"translate":"ms.bossbar.3.emerge","fallback":"传送门形成"}," » ",{"score":{"objective":"temp2","name":"$sec"},"color":"gold"},"   ❖"]
bossbar set midsoul:warn name [{"text":"❖   ","color":"red"},{"translate":"ms.bossbar.3.emerge","fallback":"传送门形成"}," » ",{"score":{"objective":"temp2","name":"$sec"},"color":"#E80505"},"   ❖"]

# 典中典闪烁
execute if score $3_gametime countdown matches 18001 run bossbar set midsoul:info visible false
execute if score $3_gametime countdown matches 18003 run bossbar set midsoul:info visible true
execute if score $3_gametime countdown matches 18005 run bossbar set midsoul:info visible false
execute if score $3_gametime countdown matches 18007 run bossbar set midsoul:info visible true
execute if score $3_gametime countdown matches 18001 run bossbar set midsoul:heed visible false
execute if score $3_gametime countdown matches 18003 run bossbar set midsoul:heed visible true
execute if score $3_gametime countdown matches 18005 run bossbar set midsoul:heed visible false
execute if score $3_gametime countdown matches 18007 run bossbar set midsoul:heed visible true
execute if score $3_gametime countdown matches 18001 run bossbar set midsoul:warn visible false
execute if score $3_gametime countdown matches 18003 run bossbar set midsoul:warn visible true
execute if score $3_gametime countdown matches 18005 run bossbar set midsoul:warn visible false
execute if score $3_gametime countdown matches 18007 run bossbar set midsoul:warn visible true

# 持续伤害翻倍
scoreboard players set @a[team=guardian] damage_tick 101