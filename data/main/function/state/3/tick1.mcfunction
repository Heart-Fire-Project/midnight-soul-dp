# 刷新 Bossbar
function main:state/3/bossbar/general

# 刷新物品栏
execute as @a[tag=game_player] run function main:state/3/inventory_pre

# 其他的部分
kill @e[type=item,tag=!game_entity]