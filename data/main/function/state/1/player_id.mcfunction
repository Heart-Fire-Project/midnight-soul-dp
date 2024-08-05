scoreboard players add $player_id temp 1
scoreboard players operation @r[tag=game_player,scores={player_id=0}] player_id = $player_id temp
execute if entity @a[tag=game_player,scores={player_id=0}] run function main:state/1/player_id