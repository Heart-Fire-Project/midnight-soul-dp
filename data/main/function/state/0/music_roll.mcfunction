# 至少比出金概率大
function base:random {min:"1",max:"100"}
execute if score $random temp2 matches 1 run scoreboard players set @s temp 0
execute if score $random temp2 matches 2..34 run scoreboard players set @s temp 1
execute if score $random temp2 matches 35..67 run scoreboard players set @s temp 2
execute if score $random temp2 matches 68..100 run scoreboard players set @s temp 3

# 我们没有单曲循环功能
execute if score @s temp = @s music run function main:state/0/music_roll
execute unless score @s temp = @s music run function main:state/0/music_apply