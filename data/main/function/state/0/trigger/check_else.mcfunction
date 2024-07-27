# 公告类
execute if score @s interact_check matches 1 run scoreboard players set @s temp 1
execute if score @s interact_check matches 2 run scoreboard players set @s temp 2
execute if score @s interact_check matches 3 run scoreboard players set @s temp 3
execute if score @s interact_check matches 1..3 run function main:lib/notice

scoreboard players set @s interact_check 0