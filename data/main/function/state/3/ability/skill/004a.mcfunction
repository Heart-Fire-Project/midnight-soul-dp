# 判定成功
# 触发近距离效果
execute as @a[team=guardian,distance=..20] run effect give @s slowness 12 5
execute if entity @a[team=guardian,distance=..20] run effect give @s speed 12 4

# 触发远距离效果：实际为击中效果，但需要去除统计与侦测tag
execute unless entity @a[team=guardian,distance=..20] run tag @p[team=guardian] add S004
execute as @a[tag=S004] run function main:state/3/player/hit
scoreboard players remove @a[tag=S004] temp.hit 1
execute at @a[tag=S004] run playsound block.respawn_anchor.deplete player @a[tag=S004] ~ ~ ~
tag @a[tag=S004] remove hit_soul
effect give @a[tag=S004] glowing 12
tag @a remove S004

# 补充效果
tag @s add S004_a
particle dust_color_transition{from_color:[0.5,0.5,1.0],to_color:[0,1,0],scale:1} ~ ~1.6 ~ 0.3 0.2 0.3 0.1 400 force @a