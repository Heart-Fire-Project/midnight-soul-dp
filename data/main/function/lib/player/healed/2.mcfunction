function base:random {min:"1",max:"3"}

execute if score $random temp2 matches 1 run tellraw @a[team=!admin] [{"text":"» ","color":"yellow","bold":true},{"translate":"ms.info.3.healed.201","fallback":"%s 被小闹钟从睡梦中叫醒了","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 2 run tellraw @a[team=!admin] [{"text":"» ","color":"yellow","bold":true},{"translate":"ms.info.3.healed.202","fallback":"拯救 %s 大作战 | 行动成功","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 3 run tellraw @a[team=!admin] [{"text":"» ","color":"yellow","bold":true},{"translate":"ms.info.3.healed.203","fallback":"有人给 %s 捎了一个凤凰治疗包","bold":false,"with":[{"selector":"@s"}]}]