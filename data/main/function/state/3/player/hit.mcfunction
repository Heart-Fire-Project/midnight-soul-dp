# 出击
# 进入擦刀状态
scoreboard players set @s countdown 1400
scoreboard players set @s state 1
function main:state/3/effect
tag @s add hit_soul

# 统计数据
scoreboard players add @s temp_hit 1