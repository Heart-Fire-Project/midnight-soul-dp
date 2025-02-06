# 状态 4 - 开门
scoreboard players set $state data 4

# 生成传送门
execute at @e[tag=marker_purple,limit=2,sort=random] run summon minecraft:block_display ~ ~ ~ {Tags:[game_entity,new_purple,purple],block_state:{Name:sculk_shrieker},transformation:{scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute as @e[tag=new_purple] run team join portal @s
scoreboard players set @e[tag=new_purple] countdown 0
tag @e[tag=new_purple] remove new_purple
title @a title ""
title @a subtitle {"translate":"ms.title.portal","fallback":"⚜ 传送门已出现 ⚜","color":"#7367F0"}
playsound minecraft:entity.warden.attack_impact player @a[team=!admin] 0 1000000 0 1000000 0.7

# 设置计时
scoreboard players set $4_process countdown 0
execute store result score $4_portal countdown run data get storage ms:map origin_goal
scoreboard players operation $4_portal countdown *= #8 data
scoreboard players operation $4_portal countdown *= #20 data

# 初始化 Bossbar
bossbar set midsoul:info style notched_12
bossbar set midsoul:heed style notched_12
bossbar set midsoul:warn style notched_12
execute store result bossbar midsoul:info max run scoreboard players get $4_portal countdown
execute store result bossbar midsoul:heed max run scoreboard players get $4_portal countdown
execute store result bossbar midsoul:warn max run scoreboard players get $4_portal countdown

# 设置速度
execute as @a[team=guardian] run attribute @s movement_speed base set 0.14
execute if score $echo data matches 7 as @a[team=soul,scores={state=0}] run attribute @s movement_speed base set 0.175
execute if score $echo data matches 7 as @a[team=guardian,scores={state=0}] run attribute @s movement_speed base set 0.21