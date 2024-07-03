# 计算百分比 A/B
# 需要参数 输入A 来源A 输入B 来源B
$scoreboard players operation valueA temp = $(valueA) $(sourceA)
$scoreboard players operation valueB temp = $(valueB) $(sourceB)
scoreboard players operation valueA temp *= #10000 data
scoreboard players operation valueA temp /= valueB temp
scoreboard players operation $percent temp = valueA temp
scoreboard players operation $percent temp /= #100 data
scoreboard players operation $front temp2 = $percent temp
scoreboard players operation $percent temp *= #100 data
scoreboard players operation valueA temp -= $percent temp
scoreboard players operation $behind temp2 = valueA temp