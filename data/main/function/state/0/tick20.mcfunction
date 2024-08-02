# 背景音乐处理
scoreboard players remove @a music_time 1
execute as @a[scores={music_time=..-1}] run function main:state/0/music_roll

# 开始游戏倒计时
execute if data storage ms:setting {game_lock:true} run scoreboard players set $0_start countdown 11
execute if score $0_start countdown matches 1..10 run scoreboard players remove $0_start countdown 1
execute if score $prepare data matches 11.. if score $0_start countdown matches 5 run tellraw @a [{"text":"\n» ","color":"#33FF33","bold":true},{"translate":"ms.info.0.overload","fallback":"人数已超限！将随机选择 10 人开始游戏","bold":false}]
execute if score $prepare data matches 11.. if score $0_start countdown matches 5 run playsound block.amethyst_block.resonate player @a 0 1000000 0 1000000
execute if score $0_start countdown matches 1..3 run playsound entity.arrow.hit_player player @a 0 1000000 0 1000000 0.5
execute if score $0_start countdown matches 0 run playsound entity.arrow.hit_player player @a 0 1000000 0 1000000
execute if score $0_start countdown matches 0 run function main:state/1/enter