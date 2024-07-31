# 粒子特效
particle campfire_cosy_smoke -6.0 17.7 -6.0 0.1 0.1 0.1 0.1 96

# II 区往返侦测
execute as @a[x=-8,y=-24,z=-8,dx=3,dy=5,dz=3] run function main:state/0/extra/enter
execute as @a[x=-1003,y=-2,z=-1038,dx=2,dy=2,dz=5] at @s run tp @s ~994 ~2 ~1046

# 隐藏跑酷终点返回侦测
execute as @a[x=-14,y=39,z=3,dx=2,dy=2,dz=5] at @s run tp @s ~5 ~-39 ~6

# 普通跑酷终点屏障检测
execute if score $0_parkour countdown matches 1.. run scoreboard players remove $0_parkour countdown 1
execute if score $0_parkour countdown matches ..0 run fill -6 16 -6 -7 17 -7 barrier

# 返回区门侦测 | 按照开关门 0.7s 计算
execute if score $0_door countdown matches 1.. run scoreboard players remove $0_door countdown 1
execute if block -8 6 8 redstone_block if entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_door countdown matches 1.. run scoreboard players set $0_door countdown 15
execute if block -8 6 8 redstone_block if entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_door countdown matches 1..14 run setblock -8 6 8 air
execute if block -8 6 8 air unless entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_door countdown matches 1.. run scoreboard players set $0_door countdown 15
execute if block -8 6 8 air unless entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_door countdown matches 1..14 run setblock -8 6 8 redstone_block

# 数据查询
execute as @p[x=-990,y=-1,z=-1001,dx=0,dy=1.2,dz=0] run tag @s add stat_query
tag @a[tag=!stat_query] remove quering
execute as @a[tag=stat_query,tag=!quering] run function main:state/0/extra/query
tag @a remove stat_query
execute unless entity @a[x=-990,y=-1,z=-1001,dx=0,dy=1.2,dz=0] run setblock -990 -2 -1001 redstone_lamp[lit=false]

# 额外区域粒子效果
execute as @e[tag=particle_1] at @s run particle electric_spark ~ ~0.2 ~ 0.1 0.1 0.1 0 1
execute as @e[tag=particle_2] at @s run particle glow ~ ~0.2 ~ 0.15 0.15 0.15 0 1
execute as @e[tag=particle_3] at @s run particle ominous_spawning ~ ~0.2 ~ 0.15 0.05 0.15 0 1
execute as @e[tag=particle_4] at @s run particle wax_on ~ ~0.2 ~ 0.15 0.15 0.15 1 1
execute as @e[tag=particle_5] at @s run particle end_rod ~ ~0.5 ~ 0 0 0 0 1
execute as @e[tag=particle_6] at @s run particle witch ~ ~0.2 ~ 0.15 0.05 0.15 0 1
execute as @e[tag=particle_7] at @s run particle dust{color:[5,5,5],scale:1} ~ ~0.2 ~ 0.1 0.1 0.1 0 2
execute as @e[tag=particle_8] at @s run particle cherry_leaves ~ ~0.4 ~ 0.12 0.12 0.12 0 1
execute as @e[tag=particle_9] at @s run particle flame ~ ~0.2 ~ 0.12 0.12 0.12 0 1
execute as @e[tag=particle_9] at @s run particle soul_fire_flame ~ ~0.2 ~ 0.1 0.1 0.1 0 1