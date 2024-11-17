# 完成灵灯点亮
scoreboard players add @a[distance=..0.5,tag=gold_interact,scores={countdown=1400..}] temp.heal 1
particle wax_on ~ ~0.5 ~ 0.25 0.3 0.25 5 32 force @a
playsound entity.evoker.prepare_summon ambient @a ~ ~ ~

# 按照病情进行救治
scoreboard players set $heal temp 12000
execute as @a[team=soul,scores={state=1}] run scoreboard players operation $heal temp < @s countdown
execute as @a[team=soul,scores={state=1}] if score @s countdown = $heal temp run tag @s add heal
execute at @s as @r[tag=heal] run function main:state/3/player/healed
tag @a remove heal

kill @s