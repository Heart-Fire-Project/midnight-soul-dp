# 选择一个点位
scoreboard players operation $player_id temp = @s player_id
execute as @e[tag=E08] if score @s player_id = $player_id temp run tag @s add no_select
tag @e[tag=E08,sort=random,limit=1,tag=!no_select] add E08_u
tp @s @n[tag=E08_u]
kill @e[tag=E08_u]
tag @e remove no_select

# 点个烟
particle white_smoke ~ ~1 ~ 0.1 0.2 0.1 0.1 256 force @a