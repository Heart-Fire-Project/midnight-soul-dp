$scoreboard players operation @s[scores={talent_$(num)_tick=1..}] talent_$(num)_tick -= $cooldown_speed setting
$scoreboard players set @s[scores={talent_$(num)_tick=..0}] talent_$(num)_tick 0

$execute if entity @a[team=guardian,distance=..12] as @s[team=soul,scores={talent_$(num)=2,talent_$(num)_tick=0}] run function main:state/3/ability/talent/002
$execute if entity @a[scores={state=1},team=soul] run tag @s[scores={talent_$(num)=3},team=soul] add talent_$(num)_on