stopsound @s music
scoreboard players operation @s music = @s temp

# 13 [2:58]
execute if score @s temp matches 11 run playsound music_disc.13 music @s 0 1000000 0 70000
execute if score @s temp matches 11 run scoreboard players set @s music_time 200

# ward [4:11]
execute if score @s temp matches 12 run playsound music_disc.ward music @s 0 1000000 0 70000
execute if score @s temp matches 12 run scoreboard players set @s music_time 270

# mellohi [1:36]
execute if score @s temp matches 13 run playsound music_disc.mellohi music @s 0 1000000 0 70000
execute if score @s temp matches 13 run scoreboard players set @s music_time 120