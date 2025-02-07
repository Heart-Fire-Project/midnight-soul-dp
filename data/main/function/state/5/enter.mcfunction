# 状态 5 - 结算
scoreboard players set $state data 5

# Bossbar 调整
bossbar set midsoul:heed players
bossbar set midsoul:warn players
bossbar set midsoul:info players

# 除非是守卫者没掉，大家都死掉
execute unless entity @a[team=guardian] as @a[team=soul] run function main:state/4/revive
execute as @a[team=soul] run function main:state/3/player/dead

# 顺便让守卫者别一直在擦刀状态
scoreboard players set @a[tag=game_player] state 0
execute if score $mode data matches 1..2 as @a[team=guardian] run function main:state/3/effect

# 重设计分板
scoreboard objectives remove result.1
scoreboard objectives remove result.2
scoreboard objectives remove result.3
scoreboard objectives remove result.4
scoreboard objectives remove result.5
scoreboard objectives remove result.6
scoreboard objectives remove result.7
scoreboard objectives remove result.8
scoreboard objectives remove result.9
scoreboard objectives remove result.10
scoreboard objectives add result.1 dummy
scoreboard objectives add result.2 dummy
scoreboard objectives add result.3 dummy
scoreboard objectives add result.4 dummy
scoreboard objectives add result.5 dummy
scoreboard objectives add result.6 dummy
scoreboard objectives add result.7 dummy
scoreboard objectives add result.8 dummy
scoreboard objectives add result.9 dummy
scoreboard objectives add result.10 dummy
scoreboard players reset * countdown
scoreboard players set $5_ending countdown 250