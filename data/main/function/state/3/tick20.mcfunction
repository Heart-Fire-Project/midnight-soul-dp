# 第二状态处理
execute at @a[scores={state=1,countdown=0..},team=soul] run playsound block.beacon.ambient player @a[scores={state=1,countdown=0..},team=soul]

# 背景音乐处理
scoreboard players remove @a music_time 1
execute as @a[scores={music_time=..-1}] run function main:state/3/music_roll

# 灵气效果处理
scoreboard players remove @e[tag=blue,scores={countdown=1..}] countdown 1
execute as @e[tag=blue,scores={countdown=0}] run data modify entity @s Glowing set value 0b

# 灵魂宝物箱计时
execute if score $3_chest countdown matches 1.. run scoreboard players remove $3_chest countdown 1
execute if score $3_chest countdown matches 0 run function main:state/3/event/summon/gray with storage ms:map

# 游戏内提示计时
execute if score $ingame_tip countdown matches 1.. run scoreboard players remove $ingame_tip countdown 1
execute if score $ingame_tip countdown matches 0 run function main:lib/tip/general

# 回响计时
execute if score $3_echo countdown matches 1.. run scoreboard players remove $3_echo countdown 1
execute if score $echo data matches 1.. run function main:state/3/echo/general

# 追踪牵制计时
scoreboard players remove @e[tag=tracker] countdown 1
execute as @e[tag=tracker] if score @s countdown matches 0 run kill @s
execute as @a[tag=game_player] at @s run function main:state/3/player/track