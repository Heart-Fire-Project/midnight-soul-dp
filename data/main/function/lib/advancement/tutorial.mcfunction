execute at @s run playsound ui.toast.in player @s ~ ~ ~ 5 1

tellraw @s [{"text":"» ","color":"#1CCAD9","bold":true},{"translate":"ms.adv.milestone.unlock","fallback":"新教程条目解锁，按下[%s]以查看详情","with":[{"keybind":"key.advancements"}],"bold":false}]