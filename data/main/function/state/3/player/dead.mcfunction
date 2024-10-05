# 依旧受文本套组影响
execute unless score @s extra_text matches 1..2 run function main:lib/player/dead/0
execute if score @s extra_text matches 1 run function main:lib/player/dead/1
execute if score @s extra_text matches 2 run function main:lib/player/dead/2

# 由于队伍会使信息内玩家名变色，后置处理
execute at @s run particle sculk_soul ~ ~1 ~ 0.2 0.1 0.2 0.3 512 force @a
team join dead @s
gamemode spectator @s
playsound entity.wither.hurt player @a[team=!admin] 0 1000000 0 1000000 0.7
kill @e[tag=gold,limit=1]
effect clear @s

# 统计数据
scoreboard players add @a[team=guardian] stat_kill 1
scoreboard players add @s stat_death 1
scoreboard players add $soul_death data 1