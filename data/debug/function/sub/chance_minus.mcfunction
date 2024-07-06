$scoreboard players remove $$(type)_chance setting 5
$execute if score $$(type)_chance setting matches ..-1 run scoreboard players set $$(type)_chance setting 100
function debug:panel