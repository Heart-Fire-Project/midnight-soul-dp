# 旁观游戏
tellraw @s ["\n",{"text":"» ","color":"gray","bold":true},{"translate":"ms.info.1.spectator","fallback":"你将旁观本场游戏","color":"gray"}]
team join spectator @s
gamemode spectator @s
tp @s 0 777 0

# 状态刷新
effect clear @s

# 放首歌
playsound minecraft:music_disc.chirp music @s 0 1000000 0 1000000