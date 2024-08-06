# 不想做权重系统，因为真的没有必要
# 优先选择灵魂连击超过 7 的最高者成为灵魂守卫者
tag @a[tag=game_player,scores={soul_combo=8..}] add guardian_target

# 看看谁最高？
scoreboard players set $max temp 0
scoreboard players operation $max temp > @a[tag=guardian_target] soul_combo
execute as @a[tag=guardian_target] run execute if score @s soul_combo = $max temp run tag @s add guardian_max
team join guardian @r[tag=guardian_max]

# 看看谁第二高？
tag @a[team=guardian] remove guardian_target
scoreboard players set $max temp 0
scoreboard players operation $max temp > @a[tag=guardian_target] soul_combo
execute as @a[tag=guardian_target] run execute if score @s soul_combo = $max temp run tag @s add guardian_sub

# 可惜是有条件哒！
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1
execute if score $player temp matches 7.. run team join guardian @r[tag=guardian_sub]

# 如果实际上没有眉笔
scoreboard players set $guardian temp 0
execute as @a[team=guardian] run scoreboard players add $guardian temp 1
execute if score $player temp matches ..6 if score $guardian temp matches 0 run team join guardian @r[tag=game_player]
execute if score $player temp matches 7.. if score $guardian temp matches 0 run team join guardian @a[tag=game_player,limit=2,sort=random]
execute if score $player temp matches 7.. if score $guardian temp matches 1 run team join guardian @r[tag=game_player,team=prepare]

# 剩下的都可以滚了
team join soul @a[tag=game_player,team=!guardian]

# 我草我怎么又是灵魂
scoreboard players set @a[team=guardian] soul_combo 0
scoreboard players add @a[team=soul] soul_combo 1

# 清理案发现场
tag @a remove guardian_target
tag @a remove guardian_max
tag @a remove guardian_sub