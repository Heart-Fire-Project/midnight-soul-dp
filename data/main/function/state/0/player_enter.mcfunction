# 数据重置
attribute @s generic.movement_speed base set 0.1
attribute @s generic.scale base set 1.0
attribute @s generic.gravity base set 0.08

# 刷新状态
effect clear @s
effect give @s saturation infinite 0 true
effect give @s instant_health 1 10 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 4 true
effect give @s regeneration infinite 4 true

# 杂项
scoreboard players set @s countdown 0
scoreboard players enable @s interact_check
gamemode adventure @s[team=!admin]
team join spectator @s
execute unless entity @s[x=-12,y=-1,z=-12,dx=17,dy=17,dz=17] unless entity @s[x=-1011,y=-2,z=-1015,dx=33,dy=19,dz=31] run tp @s[team=!admin] 0 0 0 135.0 -15.0
execute unless score @s music matches -1 run function main:state/0/music_roll