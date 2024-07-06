$scoreboard players add $$(type)_chance setting 5
$execute if score $$(type)_chance setting matches 101.. run scoreboard players set $$(type)_chance setting 0
function debug:panel