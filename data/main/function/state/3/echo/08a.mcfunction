# 标记当前位置与玩家
summon marker ~ ~ ~ {Tags:[E08,game_entity,E08_n]}
tp @e[tag=E08_n] @s
scoreboard players operation @e[tag=E08_n] player_id = @s player_id
tag @e remove E08_n