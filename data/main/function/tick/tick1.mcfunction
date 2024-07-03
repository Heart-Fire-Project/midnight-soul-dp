schedule function main:tick/tick1 1t replace

# 防止有人乱调全炸了
execute unless score $initcheck data matches 7419147 run function main:init

# 保护我方耕地
execute as @a at @s if block ~ ~-0.5 ~ farmland run effect give @s slow_falling 1 0 true
execute as @a at @s unless block ~ ~-0.5 ~ farmland run effect clear @s slow_falling

# 处理玩家事件
execute as @a unless score @s leave_game matches -2147483648..2147483647 run function main:player_init
execute as @a unless score @s leave_game matches 0 run function main:player_enter
execute as @a[x=-1.5,y=-6,z=-1.5,dx=3,dy=3,dz=3] run function main:player_death

# 重设重生点
spawnpoint @a 0 -5 0

# 定向至其他函数