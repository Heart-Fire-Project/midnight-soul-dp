execute at @s run playsound block.ender_chest.open player @s ~ ~ ~ 5 1
scoreboard players add @s extra.milestone 1
tellraw @s [{"text":"» ","color":"#CC81F0","bold":true},{"translate":"ms.adv.milestone.unlock","fallback":"里程碑 Rank %s 已解锁！按下[%s]以查看详情","with":[{"score":{"name":"@s","objective":"extra.milestone"}},{"keybind":"key.advancements"}],"bold":false}]