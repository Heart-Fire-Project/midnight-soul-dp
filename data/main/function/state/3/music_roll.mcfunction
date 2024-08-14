# 一共四首，还有俩在一块
function base:random {min:"1",max:"4"}
execute if score $random temp2 matches 1 run scoreboard players set @s temp 1
execute if score $random temp2 matches 2 run scoreboard players set @s temp 2
execute if score $random temp2 matches 3..4 run scoreboard players set @s temp 3

execute if score @s temp = @s music run function main:state/3/music_roll
execute unless score @s temp = @s music run function main:state/3/music_apply