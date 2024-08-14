stopsound @s music
scoreboard players operation @s music = @s temp

# 13 [2:58]
execute if score @s temp matches 1 run playsound music_disc.13 music @s 0 1000000 0 100000
execute if score @s temp matches 1 run scoreboard players set @s music_time 200

# Ward [4:11]
execute if score @s temp matches 2 run playsound music_disc.ward music @s 0 1000000 0 100000
execute if score @s temp matches 2 run scoreboard players set @s music_time 270

# Deeper [5:03] / Ancestry [5:43]
execute if score @s temp matches 3 run playsound music.overworld.deep_dark music @s 0 1000000 0 100000
execute if score @s temp matches 3 run scoreboard players set @s music_time 350