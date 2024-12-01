# 通告
tellraw @a[team=soul] [{"text":"» ","color":"#8080FF","bold":true},{"translate":"ms.info.aura.4s","fallback":"灵气满溢 ❖ 传送门正悄然形成，警惕已被强化的灵魂守卫者！","bold":false}]
tellraw @a[team=guardian] [{"text":"» ","color":"#8080FF","bold":true},{"translate":"ms.info.aura.4g","fallback":"灵气满溢 ❖ 传送门正悄然形成，你已被强化，尽快去斩杀灵魂！","bold":false}]
playsound block.sculk_shrieker.shriek player @a 0 1000000 0 1000000

# Bossbar 调整 | 40 秒自动开门
bossbar set midsoul:info style notched_20
bossbar set midsoul:heed style notched_20
bossbar set midsoul:warn style notched_20
bossbar set midsoul:info max 800
bossbar set midsoul:heed max 800
bossbar set midsoul:warn max 800

# 可以调整的就调整基础速度
execute as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.14