$scoreboard players add @s[scores={talent_$(num)_tick=..-1}] talent_$(num)_tick 10

$execute unless entity @a[scores={state=1},team=soul] run tag @s[scores={talent_$(num)=3},team=soul] remove talent_$(num)_on