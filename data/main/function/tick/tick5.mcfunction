schedule function main:tick/tick5 5t replace

# 轻量化粒子 | 玩家个人视角
execute as @a[scores={extra.particle=1},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle electric_spark ~ ~0.5 ~ 0.25 0.2 0.25 0 1
execute as @a[scores={extra.particle=2},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1
execute as @a[scores={extra.particle=3},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle ominous_spawning ~ ~0.3 ~ 0.15 0.1 0.15 0 3
execute as @a[scores={extra.particle=4},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle wax_on ~ ~0.5 ~ 0.25 0.1 0.25 1 1
execute as @a[scores={extra.particle=5},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle end_rod ~ ~0.5 ~ 0 0.1 0 0 3
execute as @a[scores={extra.particle=6},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1
execute as @a[scores={extra.particle=7},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle dust{color:[5,5,5],scale:1} ~ ~0.3 ~ 0.15 0.2 0.15 0 2
execute as @a[scores={extra.particle=8},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle cherry_leaves ~ ~0.5 ~ 0.12 0.12 0.12 0 2
execute as @a[scores={extra.particle=9},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1
execute as @a[scores={extra.particle=9},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle soul_fire_flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1

# 重定向至其他函数
execute if score $state data matches 0 run function main:state/0/tick5
execute if score $state data matches 3 run function main:state/3/tick5