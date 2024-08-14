# 背景音乐处理
scoreboard players remove @a music_time 1
execute as @a[scores={music_time=..-1}] run function main:state/3/music_roll