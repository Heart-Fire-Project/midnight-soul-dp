# 通告
tellraw @a[team=soul] [{"text":"» ","color":"#8080FF","bold":true},{"translate":"ms.info.aura.4s","fallback":"灵气满溢 ❖ 传送门正悄然形成，警惕已被强化的灵魂守卫者！","bold":false}]
tellraw @a[team=guardian] [{"text":"» ","color":"#8080FF","bold":true},{"translate":"ms.info.aura.4g","fallback":"灵气满溢 ❖ 传送门正悄然形成，你已被强化，尽快去斩杀灵魂！","bold":false}]
playsound block.sculk_shrieker.shriek player @a 0 1000000 0 1000000

# Bossbar 调整 | 60 秒自动开门
bossbar set midsoul:info style notched_20
bossbar set midsoul:heed style notched_20
bossbar set midsoul:warn style notched_20
bossbar set midsoul:info max 1200
bossbar set midsoul:heed max 1200
bossbar set midsoul:warn max 1200

# 视为灵气等级 4
scoreboard players set $aura_rank data 4
scoreboard players set $talent_007 data 20
execute as @e[tag=blue] run data modify entity @s Glowing set value 1b

# 可以调整的就调整基础速度
execute as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.14
execute if score $echo data matches 7 as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.21