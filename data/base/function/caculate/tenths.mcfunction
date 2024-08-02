# 将输入值自动 /10 并保留十分位
# 需要参数：value source (计分板记录值)
# 输出结果：$front(小数点前) $behind(小数点后)
$scoreboard players operation $front temp2 = $(value) $(source)
scoreboard players operation $behind temp2 = $front temp2
scoreboard players operation $front temp2 /= #10 data
scoreboard players operation $behind temp2 %= #10 data