# 算一次人数
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1

# 管理员 → 参加游戏
execute if score $player temp matches ..9 run team join prepare @s
execute if score $player temp matches ..9 run function main:state/1/player_enter/prepare
tag @s add join_check

# 看看这下超了没
execute if score $player temp matches 9.. run tellraw @a[team=admin] ["",{"text":"» ","color":"#33FF33","bold":true},{"translate":"ms.info.1.overload","fallback":"玩家已满，管理员加入阶段已提前结束……","color":"#33FF33"}]
execute if score $player temp matches 9.. run tag @a[team=admin,tag=!join_check] add join_check