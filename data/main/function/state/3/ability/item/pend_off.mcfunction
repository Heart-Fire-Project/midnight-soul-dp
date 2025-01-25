scoreboard players add @s[scores={item_tick=..-1}] item_tick 10

execute as @s[scores={item=1,item_tick=0..}] run function main:state/3/ability/item/1f
execute as @s[scores={item=6,item_tick=0..}] run function main:state/3/ability/item/6f