# 被击倒
tag @s remove soul_down
tp @s @e[limit=1,tag=death_mark]
kill @e[tag=death_mark]

# 统计数据
scoreboard players add @s temp_dying 1
scoreboard players add @a[tag=hit_soul] temp_down 1
tag @a remove hit_soul

# 设置时间
scoreboard players set @s[scores={temp_dying=1}] countdown 601
scoreboard players set @s[scores={temp_dying=2}] countdown 401
scoreboard players set @s[scores={temp_dying=3..}] countdown 201

# 刷新效果
function main:state/3/effect

# 受文本套组影响
execute unless score @s extra_text matches 1..2 run function main:lib/player/down/0
execute if score @s extra_text matches 1 run function main:lib/player/down/1
execute if score @s extra_text matches 2 run function main:lib/player/down/2

# 灯噔咚
function main:state/3/event/new_light
playsound block.conduit.deactivate player @a[team=!admin] 0 1000000 0 1000000