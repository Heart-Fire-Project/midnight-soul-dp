# 生成灵魂之灯
execute as @e[tag=marker_gold] at @s unless entity @e[distance=..3,tag=gold] run tag @s add gold_empty
execute at @e[tag=gold_empty,limit=1,sort=random] run summon block_display ~ ~ ~ {Tags:[game_entity,new_gold,gold],Glowing:1b,block_state:{Name:soul_lantern},transformation:{scale:[2f,2f,2f],translation:[-1f,0f,-1f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
execute at @e[tag=new_gold] run particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
execute as @e[tag=new_gold] run team join lamp @s
execute as @e[tag=new_gold] run tag @s remove new_gold
execute as @e[tag=gold_empty] run tag @s remove gold_empty