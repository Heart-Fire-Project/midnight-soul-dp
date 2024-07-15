# II 区往返侦测
execute as @a[x=-8,y=-24,z=-8,dx=3,dy=5,dz=3] run function main:state/0/extra_enter
execute as @a[x=-1003,y=-2,z=-1038,dx=2,dy=2,dz=5] at @s run tp @s ~994 ~2 ~1046

# 隐藏跑酷终点返回侦测
execute as @a[x=-14,y=39,z=3,dx=2,dy=2,dz=5] at @s run tp @s ~5 ~-39 ~6

# 返回区门侦测 | 按照开关门 0.7s 计算
execute if score $0_door countdown matches 1.. run scoreboard players remove $0_door countdown 1
execute if block -8 6 8 redstone_block if entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_door countdown matches 1.. run scoreboard players set $0_door countdown 15
execute if block -8 6 8 redstone_block if entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_door countdown matches 1..14 run setblock -8 6 8 air
execute if block -8 6 8 air unless entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_door countdown matches 1.. run scoreboard players set $0_door countdown 15
execute if block -8 6 8 air unless entity @a[x=-9,y=0,z=8,dx=2,dy=2,dz=7] unless score $0_door countdown matches 1..14 run setblock -8 6 8 redstone_block