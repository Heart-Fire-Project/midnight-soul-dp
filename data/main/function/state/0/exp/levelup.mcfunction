# 非临时特效，这次真的这样啦
scoreboard players operation @s stat_exp -= @s exp_max
scoreboard players add @s stat_level 1
playsound block.trial_spawner.ominous_activate player @a ~ ~ ~
particle minecraft:trial_spawner_detection_ominous ~ ~0.1 ~ 0.2 0.2 0.2 0 64
scoreboard players set @s countdown -69

scoreboard players operation @s temp = @s[scores={stat_level=..127}] stat_level
scoreboard players set @s[scores={stat_level=..127}] temp2 0
function main:state/0/exp/maximum