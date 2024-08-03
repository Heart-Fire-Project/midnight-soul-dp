# 管理员 → 参加游戏
team join prepare @s
function main:state/1/player_enter/prepare

# 看看这下超了没
scoreboard players set $player temp 0
execute as @a[tag=game_player] run scoreboard players add $player temp 1
execute if score $player temp matches 2.. run tellraw @a[team=admin] ["",{"text":"» ","color":"#33FF33","bold":true},{"translate":"ms.info.1.overload","fallback":"玩家已满，管理员加入阶段已提前结束……","color":"#33FF33"}]
execute if score $player temp matches 2.. run scoreboard players set $1_process countdown 1080