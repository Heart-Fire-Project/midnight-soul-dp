function base:caculate/time {unit:"sec",tick:"$4_portal",source:"countdown"}

# 设置进度
execute store result bossbar midsoul:info value run scoreboard players get $4_portal countdown

# 设置颜色
execute if score $4_portal countdown matches ..400 run bossbar set midsoul:info color pink
execute if score $4_portal countdown matches 401.. run bossbar set midsoul:info color purple

# 设置名称
execute if score $4_portal countdown matches 401.. if score $ms temp2 matches ..09 run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"#9966CC"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"#9085C4"},{"text":".0","color":"#9085C4"},{"score":{"objective":"temp2","name":"$ms"},"color":"#9085C4"}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]
execute if score $4_portal countdown matches 401.. if score $ms temp2 matches 10.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"#9966CC"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"#9085C4"},{"text":".","color":"#9085C4"},{"score":{"objective":"temp2","name":"$ms"},"color":"#9085C4"}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]
execute if score $4_portal countdown matches ..400 if score $ms temp2 matches ..09 run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"#FF77EE"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"#FF96F9"},{"text":".0","color":"#FF96F9"},{"score":{"objective":"temp2","name":"$ms"},"color":"#FF96F9"}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]
execute if score $4_portal countdown matches ..400 if score $ms temp2 matches 10.. run bossbar set midsoul:info name [{"translate":"ms.bossbar.4.portal","fallback":"传送门 »","color":"#FF77EE"}," ",{"score":{"objective":"temp2","name":"$sec"},"color":"#FF96F9"},{"text":".","color":"#FF96F9"},{"score":{"objective":"temp2","name":"$ms"},"color":"#FF96F9"}," ",{"translate":"ms.bossbar.4.portal.2","fallback":"« 已开启"}]

# 设置闪烁 - 气息探测失效
execute if score $4_process countdown matches 10001 run bossbar set midsoul:info visible false
execute if score $4_process countdown matches 10002 run bossbar set midsoul:info visible true
execute if score $4_process countdown matches 10003 run bossbar set midsoul:info visible false
execute if score $4_process countdown matches 10004 run bossbar set midsoul:info visible true
execute if score $4_process countdown matches 10005 run bossbar set midsoul:info visible false
execute if score $4_process countdown matches 10006 run bossbar set midsoul:info visible true

# 设置闪烁 - 剩余时间不足
execute if score $4_portal countdown matches 403 run bossbar set midsoul:info visible false
execute if score $4_portal countdown matches 402 run bossbar set midsoul:info visible true
execute if score $4_portal countdown matches 401 run bossbar set midsoul:info visible false
execute if score $4_portal countdown matches 400 run bossbar set midsoul:info visible true
execute if score $4_portal countdown matches 399 run bossbar set midsoul:info visible false
execute if score $4_portal countdown matches 398 run bossbar set midsoul:info visible true
execute if score $4_portal countdown matches 397 run bossbar set midsoul:info visible false
execute if score $4_portal countdown matches 396 run bossbar set midsoul:info visible true