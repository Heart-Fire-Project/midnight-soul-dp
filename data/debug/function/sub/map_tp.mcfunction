execute if score $map setting matches 0 run function base:random {min:"1",max:"3"}
execute unless score $map setting matches 0 run scoreboard players operation $random temp2 = $map setting

execute if score $random temp2 matches 1 run tp @s 1115 64.5 1097 1.5 18.0
execute if score $random temp2 matches 2 run tp @s 959 53 -965 -143.0 -4.5
execute if score $random temp2 matches 3 run tp @s -785 22 1154 -143.0 -6.0