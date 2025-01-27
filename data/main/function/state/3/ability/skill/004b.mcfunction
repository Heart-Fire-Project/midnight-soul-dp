# 判定失败
# 触发近距离效果
execute if entity @a[team=guardian,distance=..20] run effect give @s slowness 12 3

# 触发远距离效果
execute unless entity @a[team=guardian,distance=..20] run tp @s @p[team=guardian]
execute unless entity @a[team=guardian,distance=..20] run effect give @s slowness 12 6

# 补充效果
tag @s add S004_b
particle dust_color_transition{from_color:[0.5,0.5,1.0],to_color:[1,0,0],scale:1} ~ ~1.6 ~ 0.3 0.2 0.3 0.1 400 force @a