# 杀光光
kill @e[tag=game_entity]

# 分批入场
execute as @r[team=guardian] run function main:state/2/player_enter/guardian
execute as @r[team=soul] run function main:state/2/player_enter/soul
execute as @a[team=spectator] run tp @s @r[limit=1,tag=game_player]

# 音效处理
stopsound @a music
playsound entity.breeze.inhale player @a[team=!admin] 0 1000000 0 1000000