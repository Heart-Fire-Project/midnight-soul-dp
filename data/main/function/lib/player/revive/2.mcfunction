function base:random {min:"1",max:"5"}

execute if score $random temp2 matches 1 run tellraw @a[team=!admin] [{"text":"» ","color":"green","bold":true},{"translate":"ms.info.3.revive.201","fallback":"%s 冲飞了，直接复活","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a[team=!admin] [{"text":"» ","color":"green","bold":true},{"translate":"ms.info.3.revive.202","fallback":"%s 散落成白光漫天……这里不是复活文案吗？","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a[team=!admin] [{"text":"» ","color":"green","bold":true},{"translate":"ms.info.3.revive.203","fallback":"%s 已完成今日灵感菇大学习","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 4 run tellraw @a[team=!admin] [{"text":"» ","color":"green","bold":true},{"translate":"ms.info.3.revive.204","fallback":"和平鸽的实力不及 %s 的百分之一","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 5 run tellraw @a[team=!admin] [{"text":"» ","color":"green","bold":true},{"translate":"ms.info.3.revive.205","fallback":"%s 已复活，接着启动卡拉彼丘，仍然享受掉段人生","bold":false,"with":[{"selector":"@s"}]}]