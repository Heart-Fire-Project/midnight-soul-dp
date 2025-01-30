# 已占用的点位
execute at @e[tag=gray] run tag @e[tag=marker_gray,distance=..0.1] add no_summon

# 进行生成
execute at @e[tag=!no_summon,tag=marker_gray,sort=random,limit=2] run summon block_display ~ ~ ~ {Tags:[game_entity,new_gray,gray,"cursed_gray"],block_state:{Name:light_gray_shulker_box},transformation:{scale:[0.5f,0.5f,0.5f],translation:[-0.25f,0f,-0.25f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gray] run particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
execute as @e[tag=new_gray] run team join chest @s
execute as @e[tag=new_gray] run tag @s remove new_gray
tag @e remove no_summon