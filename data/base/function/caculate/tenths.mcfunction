# 将输入值自动 /10 并保留十分位
# 需要参数 输入 来源
$scoreboard players operation $front temp2 = $(value) $(source)
scoreboard players operation $behind temp2 = $front temp2
scoreboard players operation $front temp2 /= #10 data
scoreboard players operation $behind temp2 %= #10 data