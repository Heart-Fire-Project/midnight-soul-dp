# 时间计算
# 需要参数 最高单位[sec/min/hrs/day] 输入(以游戏可为单位) 来源 | 输出中同时包含毫秒与游戏刻
scoreboard players reset * temp
$scoreboard players set #$(unit) temp 1
execute if score #day temp matches 1 run scoreboard players set #hrs temp 1
execute if score #hrs temp matches 1 run scoreboard players set #min temp 1
$scoreboard players operation $tick temp2 = $(tick) $(source)
scoreboard players operation $sec temp2 = $tick temp2
scoreboard players operation $sec temp2 /= #20 data
scoreboard players operation $tick temp2 %= #20 data
scoreboard players operation $ms temp2 = $tick temp2
scoreboard players operation $ms temp2 *= #5 data
execute if score #min temp matches 1 run scoreboard players operation $min temp2 = $sec temp2
execute if score #min temp matches 1 run scoreboard players operation $min temp2 /= 60 data
execute if score #min temp matches 1 run scoreboard players operation $sec temp2 %= 60 data
execute if score #hrs temp matches 1 run scoreboard players operation $hrs temp2 = $min temp2
execute if score #hrs temp matches 1 run scoreboard players operation $hrs temp2 /= 60 data
execute if score #hrs temp matches 1 run scoreboard players operation $min temp2 %= 60 data
execute if score #day temp matches 1 run scoreboard players operation $day temp2 = $hrs temp2
execute if score #day temp matches 1 run scoreboard players operation $day temp2 /= 24 data
execute if score #day temp matches 1 run scoreboard players operation $hrs temp2 %= 24 data