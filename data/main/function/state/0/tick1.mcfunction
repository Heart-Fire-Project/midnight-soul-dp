# 跑酷计时
execute as @a[scores={state=1}] run scoreboard players add @s parkour_tick 1
execute as @a[scores={state=1}] run function main:state/0/parkour/timer

# 跑酷状态侦测
execute as @a[scores={state=1},team=!admin,x=3.2,y=0,z=-9,dx=0,dy=2,dz=2] run function main:state/0/parkour/cancel
execute as @a[scores={state=1},team=!admin,x=-9,y=0,z=5,dx=2,dy=2,dz=2] run function main:state/0/parkour/cancel
execute as @a[scores={state=0},team=!admin,x=4.8,y=0,z=-9,dx=0.5,dy=2,dz=2] run function main:state/0/parkour/start