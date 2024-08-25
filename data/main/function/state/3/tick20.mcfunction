# 背景音乐处理
scoreboard players remove @a music_time 1
execute as @a[scores={music_time=..-1}] run function main:state/3/music_roll

# 灵气效果处理
scoreboard players remove @e[tag=blue,scores={countdown=1..}] countdown 1
execute as @e[tag=blue,scores={countdown=0}] run data modify entity @s Glowing set value 0b

# 灵魂宝物箱计时
execute if score $3_chest countdown matches 1.. run scoreboard players remove $3_chest countdown 1
execute if score $3_chest countdown matches 0 run function main:state/3/event/new_chest with storage ms:map