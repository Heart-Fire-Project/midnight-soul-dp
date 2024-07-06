stopsound @s music
scoreboard players operation @s music = @s temp

# Creator(SP) [1:14]
execute if score @s temp matches 0 run playsound music_disc.creator_music_box music @s 0 1000000 0 700000
execute if score @s temp matches 0 run scoreboard players set @s music_time 81

# Creator [2:57]
execute if score @s temp matches 1 run playsound music_disc.creator music @s 0 1000000 0 700000
execute if score @s temp matches 1 run scoreboard players set @s music_time 184

# otherside [3:15]
execute if score @s temp matches 2 run playsound music_disc.otherside music @s 0 1000000 0 700000
execute if score @s temp matches 2 run scoreboard players set @s music_time 202

# strad [3:08]
execute if score @s temp matches 3 run playsound music_disc.strad music @s 0 1000000 0 700000
execute if score @s temp matches 3 run scoreboard players set @s music_time 195