# 重置地图变量
execute if score $map data matches 1 run fill 1183 13 1137 1197 13 1123 bone_block replace pearlescent_froglight
execute if score $map data matches 2 run fill 1049 41 -999 1053 41 -995 red_candle[lit=false] replace red_candle
execute if score $map data matches 3 run fill -870 20 1100 -868 20 1098 obsidian replace crying_obsidian

# 设置地图信息
execute if score $map data matches 1 run data merge storage ms:map {shard_goal:"24",shard_summon:"30",chest_summon:"5",chest_max:"12"}
execute if score $map data matches 2 run data merge storage ms:map {shard_goal:"18",shard_summon:"21",chest_summon:"4",chest_max:"10"}
execute if score $map data matches 3 run data merge storage ms:map {shard_goal:"40",shard_summon:"48",chest_summon:"6",chest_max:"15"}

# 相关回响
execute store result score $goal temp run data get storage ms:map shard_goal
execute if score $echo data matches 2 run scoreboard players operation $goal temp *= #7 data
execute if score $echo data matches 2 run scoreboard players operation $goal temp /= #10 data
execute if score $echo data matches 3 run scoreboard players set $goal temp 9
execute store result storage ms:map shard_goal short 1 run scoreboard players get $goal temp