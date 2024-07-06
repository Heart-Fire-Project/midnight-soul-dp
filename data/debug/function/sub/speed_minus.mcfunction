$execute if score $$(type)_speed setting matches 0 run scoreboard players set $$(type)_speed setting 1000000
$execute if score $$(type)_speed setting matches 2..20 run scoreboard players remove $$(type)_speed setting 2
$execute if score $$(type)_speed setting matches 25..50 run scoreboard players remove $$(type)_speed setting 5
$execute if score $$(type)_speed setting matches 60..100 run scoreboard players remove $$(type)_speed setting 10
$execute if score $$(type)_speed setting matches 1010000 run scoreboard players set $$(type)_speed setting 100
$execute if score $$(type)_speed setting matches 1000000 run scoreboard players add $$(type)_speed setting 10000
function debug:panel