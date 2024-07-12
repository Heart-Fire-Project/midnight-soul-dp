$scoreboard players add $$(type)_chance setting 5
$execute if score $$(type)_chance setting matches 101.. run scoreboard players set $$(type)_chance setting 0
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign
function debug:panel