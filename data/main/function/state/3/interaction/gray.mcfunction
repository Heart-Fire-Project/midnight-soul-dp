# 完成灵魂宝物盒开启
scoreboard players add @a[distance=..0.5,tag=gray_interact,scores={countdown=1000..}] temp_open 1
particle dust{color:[1,1,1],scale:1} ~ ~0.2 ~ 0.2 0.1 0.2 0 7 force @a
playsound block.shulker_box.open player @a ~ ~ ~

# 灵魂效果
function base:random {max:"6",min:"1"}
execute if entity @a[team=soul,distance=..0.5,tag=gray_interact,scores={countdown=1000..,item=1..}] run effect give @p[team=guardian] glowing 7 0
execute as @r[team=soul,distance=..0.5,tag=gray_interact,scores={countdown=1000..,item=0}] run scoreboard players operation @s item = $random temp2

# 守卫效果
effect give @r[team=guardian,distance=..0.5,tag=gray_interact,scores={countdown=1000..}] speed 10 1
execute if entity @a[team=guardian,distance=..0.5,tag=gray_interact,scores={countdown=1000..}] run effect give @p[team=soul,scores={state=0}] glowing 7 0

# 特殊机制
# 诅咒
execute if entity @s[tag=cursed_gray] as @r[team=soul,distance=..0.5,tag=gray_interact,scores={countdown=1000..}] run function main:state/3/event/curse_gray_s
execute if entity @s[tag=cursed_gray] as @r[team=guardian,distance=..0.5,tag=gray_interact,scores={countdown=1000..}] run function main:state/3/event/curse_gray_g

kill @s