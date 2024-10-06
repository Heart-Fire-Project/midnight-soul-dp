stopsound @s music
scoreboard players operation @s music = @s temp

# 13 [2:58]
execute if score @s temp matches 11 run playsound music_disc.13 music @s 0 1000000 0 70000
execute if score @s temp matches 11 run scoreboard players set @s music_time 200

# Ward [4:11]
execute if score @s temp matches 12 run playsound music_disc.ward music @s 0 1000000 0 70000
execute if score @s temp matches 12 run scoreboard players set @s music_time 270

# Deeper [5:03] / Ancestry [5:43]
execute if score @s temp matches 13 run playsound music.overworld.deep_dark music @s 0 1000000 0 70000
execute if score @s temp matches 13 run scoreboard players set @s music_time 350