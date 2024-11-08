# 刷新 Bossbar
function main:state/3/bossbar/general

# 刷新物品栏
execute as @a[tag=game_player] run function main:state/3/inventory_pre

# 蹲下交互侦测
execute as @a[tag=game_player,scores={state=0}] at @s run function main:state/3/interaction/check
scoreboard players remove @a[scores={sneak_time=1..}] sneak_time 1

# 刷新经验条
execute as @a[tag=game_player] run function main:state/3/set_exp

# 计时部分
scoreboard players add $3_gametime countdown 1
scoreboard players remove @a[scores={damage_tick=1..}] damage_tick 1
scoreboard players add @a[tag=game_player] temp_time 1

# 能力施放与冷却
execute as @a[tag=game_player,tag=!skill_on] at @s run function main:state/3/ability/skill/pend_on
execute as @a[tag=game_player,tag=!talent_1_on] at @s run function main:state/3/ability/talent/pend_on {"num":1}
execute as @a[tag=game_player,tag=!talent_2_on] at @s run function main:state/3/ability/talent/pend_on {"num":2}
execute as @a[team=soul,tag=!item_on] at @s run function main:state/3/ability/item/pend_on

# 能力结束与判定
execute as @a[tag=game_player,tag=skill_on] at @s run function main:state/3/ability/skill/pend_off
execute as @a[tag=game_player,tag=talent_1_on] at @s run function main:state/3/ability/talent/pend_off {"num":1}
execute as @a[tag=game_player,tag=talent_2_on] at @s run function main:state/3/ability/talent/pend_off {"num":2}
execute as @a[team=soul,tag=item_on] at @s run function main:state/3/ability/item/pend_off

# 其他的部分
execute as @a[scores={sleep_detect=1..},team=soul] run function main:state/3/event/wake_up
kill @e[type=item,tag=!game_entity]