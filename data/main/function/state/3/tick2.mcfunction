# 第二状态处理
scoreboard players remove @a[scores={state=1,countdown=1..}] countdown 20
execute at @a[team=soul,scores={state=1,countdown=0..}] run particle snowflake ~ ~0.5 ~ 0.2 0.1 0.2 0.03 5 force @a
execute at @a[team=guardian,scores={state=1,countdown=0..}] run particle block{block_state:redstone_block} ~ ~0.2 ~ 0.2 0.1 0.2 1 5 force @a
execute as @a[team=soul,scores={state=1,countdown=..0}] run function main:state/3/player/dead
execute as @a[team=guardian,scores={state=1,countdown=..0}] run function main:state/3/player/recover

# 灵气弥散
execute if score $aura_rank data matches 2 as @e[tag=blue] at @s run function main:state/3/event/aura/2