advancement revoke @s only main:damage/taken

execute if score $state data matches 3..4 as @s[team=soul] run function main:state/3/player/hurt