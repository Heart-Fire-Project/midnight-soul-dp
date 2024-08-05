# 不计灵魂连击
execute as @a[tag=game_player] run scoreboard players operation @s temp = @s player_id
scoreboard players operation @a[tag=game_player] temp %= #2 data
team join soul @a[tag=game_player,scores={temp=1}]
team join guardian @a[tag=game_player,scores={temp=0}]