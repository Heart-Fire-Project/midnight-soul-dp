execute at @s run playsound entity.player.attack.sweep player @s ~ ~ ~ 5 1

tellraw @s [{"text":"» ","color":"#FF9944","bold":true},{"translate":"ms.adv.extra.unlock","fallback":"新的%s已解锁！按下[%s]以查看……","with":[{"translate":"ms.weapon","fallback":"武器样式"},{"keybind":"key.advancements"}],"bold":false}]