# 随机数
# 需要参数：max min (取值区间，双闭)
# 输出结果：$random (随机数)
$scoreboard players set $random_max temp $(max)
$scoreboard players set $random_min temp $(min)
summon area_effect_cloud 0 -64 0 {Tags:["random"],Duration:1}
execute store result score $random temp2 run data get entity @e[tag=random,limit=1] UUID[0]
kill @e[tag=random]
scoreboard players operation $random_max temp -= $random_min temp
scoreboard players add $random_max temp 1
scoreboard players operation $random temp2 %= $random_max temp
scoreboard players operation $random temp2 += $random_min temp