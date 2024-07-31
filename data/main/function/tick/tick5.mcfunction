schedule function main:tick/tick5 5t replace

# 处理玩家事件
execute as @a unless score @s leave_game matches -2147483648..2147483647 run function main:player_init
execute as @a unless score @s leave_game matches 0 run function main:player_enter
execute as @a[x=-1.5,y=-6,z=-1.5,dx=2,dy=2,dz=2] run function main:player_death
execute as @a[team=!admin,gamemode=creative] run function debug:join_admin

# 轻量化粒子 | 玩家个人视角
execute as @a[scores={extra_particle=1},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle electric_spark ~ ~0.5 ~ 0.25 0.2 0.25 0 1
execute as @a[scores={extra_particle=2},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1
execute as @a[scores={extra_particle=3},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle ominous_spawning ~ ~0.3 ~ 0.15 0.1 0.15 0 3
execute as @a[scores={extra_particle=4},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle wax_on ~ ~0.5 ~ 0.25 0.1 0.25 1 1
execute as @a[scores={extra_particle=5},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle end_rod ~ ~0.5 ~ 0 0.1 0 0 3
execute as @a[scores={extra_particle=6},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1
execute as @a[scores={extra_particle=7},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle dust{color:[5,5,5],scale:1} ~ ~0.3 ~ 0.15 0.2 0.15 0 2
execute as @a[scores={extra_particle=8},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle cherry_leaves ~ ~0.5 ~ 0.12 0.12 0.12 0 2
execute as @a[scores={extra_particle=9},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1
execute as @a[scores={extra_particle=9},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle soul_fire_flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1

# 重定向至其他函数
execute if score $state data matches 0 run function main:state/0/tick5