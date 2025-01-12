# 无特效，直接进行计算
# 实际上会舍弃小数点后的部分，所以正常游戏只会有 +0% +10% +20%
scoreboard players operation @s temp = $interact_speed setting
scoreboard players operation @s temp *= $talent_007 data
scoreboard players operation @s temp /= #100 data

scoreboard players operation @s countdown += @s temp