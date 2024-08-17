# 设置进度
execute store result bossbar midsoul:info value run scoreboard players get $shard_collect data
execute store result bossbar midsoul:heed value run scoreboard players get $shard_collect data
execute store result bossbar midsoul:warn value run scoreboard players get $shard_collect data

# 设置名称
execute if score $aura_rank data matches 0 run data merge storage ms:temp {aura1:"◇ ◇ ◇",aura2:"◇ ◇ ◇"}
execute if score $aura_rank data matches 1 run data merge storage ms:temp {aura1:"◇ ◇ ◆",aura2:"◆ ◇ ◇"}
execute if score $aura_rank data matches 2 run data merge storage ms:temp {aura1:"◇ ◆ ◆",aura2:"◆ ◆ ◇"}
execute if score $aura_rank data matches 3 run data merge storage ms:temp {aura1:"◆ ◆ ◆",aura2:"◆ ◆ ◆"}
$bossbar set midsoul:info name [{"storage":"ms:temp","nbt":"aura1","color":"aqua"},"   ",{"translate":"ms.bossbar.3.normal","fallback":"收集进度"}," » ",{"score":{"objective":"data","name":"$shard_collect"},"color":"blue"},"/$(shard_goal)","   ",{"storage":"ms:temp","nbt":"aura2"}]
$bossbar set midsoul:heed name [{"storage":"ms:temp","nbt":"aura1","color":"yellow"},"   ",{"translate":"ms.bossbar.3.normal","fallback":"收集进度"}," » ",{"score":{"objective":"data","name":"$shard_collect"},"color":"gold"},"/$(shard_goal)","   ",{"storage":"ms:temp","nbt":"aura2"}]
$bossbar set midsoul:warn name [{"storage":"ms:temp","nbt":"aura1","color":"red"},"   ",{"translate":"ms.bossbar.3.normal","fallback":"收集进度"}," » ",{"score":{"objective":"data","name":"$shard_collect"},"color":"#E80505"},"/$(shard_goal)","   ",{"storage":"ms:temp","nbt":"aura2"}]