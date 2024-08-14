schedule function main:tick/tick1 1t replace

# 防止有人乱调全炸了
execute unless score $initcheck data matches 7419147 run function main:init

# 保护我方耕地
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 0 true
execute as @a at @s unless block ~ ~-0.5 ~ farmland run effect clear @s slow_falling

# 重置玩家部分数据
spawnpoint @a 0 -5 0
execute as @a unless score @s interact_check matches 0 run scoreboard players enable @s interact_check

# 定向至其他函数
function debug:tick1
execute if score $state data matches 0 run function main:state/0/tick1
execute if score $state data matches 1 run function main:state/1/tick1
execute if score $state data matches 2 run function main:state/2/tick1
execute if score $state data matches 3 run function main:state/3/tick1

# 如果仍有交互侦测值，则为无效
execute as @a unless score @s interact_check matches 0 run scoreboard players set @s interact_check 0