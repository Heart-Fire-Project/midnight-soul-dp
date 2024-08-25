schedule function main:tick/tick2 2t replace

# 隐身侦测
tag @a[nbt={active_effects:[{id:"minecraft:invisibility"}]}] add invisibility
execute as @a[tag=invisibility] unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run tag @s remove invisibility

# 完整版粒子 | 他人视角
execute as @a[scores={extra_particle=1},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle electric_spark ~ ~0.5 ~ 0.25 0.2 0.25 0 1 force @a[distance=0.01..]
execute as @a[scores={extra_particle=2},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle glow ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a[distance=0.01..]
execute as @a[scores={extra_particle=3},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle ominous_spawning ~ ~0.3 ~ 0.15 0.1 0.15 0 1 force @a[distance=0.01..]
execute as @a[scores={extra_particle=4},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle wax_on ~ ~0.5 ~ 0.25 0.1 0.25 1 1 force @a[distance=0.01..]
execute as @a[scores={extra_particle=5},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=0.01..]
execute as @a[scores={extra_particle=6},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle witch ~ ~0.2 ~ 0.25 0.1 0.25 0 1 force @a[distance=0.01..]
execute as @a[scores={extra_particle=7},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle dust{color:[5,5,5],scale:1} ~ ~0.3 ~ 0.15 0.2 0.15 0 2 force @a[distance=0.01..]
execute as @a[scores={extra_particle=8},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle cherry_leaves ~ ~0.5 ~ 0.12 0.12 0.12 0 1 force @a[distance=0.01..]
execute as @a[scores={extra_particle=9},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1 force @a[distance=0.01..]
execute as @a[scores={extra_particle=9},tag=!invisibility,team=!admin,gamemode=!spectator] at @s run particle soul_fire_flame ~ ~0.3 ~ 0.15 0.2 0.15 0 1 force @a[distance=0.01..]

# 定向至其他函数
function debug:tick2
execute if score $state data matches 0 run function main:state/0/tick2
execute if score $state data matches 3 run function main:state/3/tick2