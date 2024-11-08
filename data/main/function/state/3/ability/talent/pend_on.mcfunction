$scoreboard players operation @s[scores={talent_$(num)_tick=1..}] talent_$(num)_tick -= $cooldown_speed setting
$scoreboard players set @s[scores={talent_$(num)_tick=..0}] talent_$(num)_tick 0