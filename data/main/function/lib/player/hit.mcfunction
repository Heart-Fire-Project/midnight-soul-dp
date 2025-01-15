advancement revoke @s only main:damage/dealt

execute if score $state data matches 3..5 as @s[team=guardian] run function main:state/3/player/hit