# 刷新 Bossbar
function main:state/3/bossbar/general

# 刷新物品栏
execute as @a[tag=game_player] run function main:state/3/inventory_pre

# 其他的部分
kill @e[type=item,tag=!game_entity]

# 计时部分
scoreboard players add $3_gametime countdown 1
scoreboard players remove @a[scores={damage_tick=1..}] damage_tick 1