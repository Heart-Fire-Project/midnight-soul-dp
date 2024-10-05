function base:random {min:"1",max:"3"}

execute if score $random temp2 matches 1 run tellraw @a[team=!admin] [{"text":"» ","color":"gold","bold":true},{"translate":"ms.info.3.down.201","fallback":"%s 心态好到倒地就睡，不点亮灵魂之灯疑似就不用再醒了","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 1 run tellraw @a[team=!admin] [{"text":"» ","color":"gold","bold":true},{"translate":"ms.info.3.down.202","fallback":"%s 失去了全部的力气和手段，哭了 ;w;","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 1 run tellraw @a[team=!admin] [{"text":"» ","color":"gold","bold":true},{"translate":"ms.info.3.down.203","fallback":"什么事都没发生，只是 %s 躺地上了","bold":false,"with":[{"selector":"@s"}]}]