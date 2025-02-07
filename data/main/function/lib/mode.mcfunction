execute if score $mode setting matches 1 run tellraw @a [{"text":"\n» ","bold":true,"color":"#7367F0"},{"translate":"ms.mode.select","fallback":"选定游戏模式","bold":false}," ",{"translate":"ms.mode.1","fallback":"灵气碎片","bold":false,"color":"aqua"}]
execute if score $mode setting matches 1 run tellraw @a [{"text":"» ","bold":true},{"translate":"ms.mode.1.desc","fallback":"收集散落的碎片，开启传送门，并且逃出生天","bold":false}]
execute if score $mode setting matches 1 run data merge storage ms:mode {start:"5",cancel:"4"}

execute if score $mode setting matches 2 run tellraw @a [{"text":"\n» ","bold":true,"color":"#7367F0"},{"translate":"ms.mode.select","fallback":"选定游戏模式","bold":false}," ",{"translate":"ms.mode.2","fallback":"针锋奔逃","bold":false,"color":"aqua"}]
execute if score $mode setting matches 2 run tellraw @a [{"text":"» ","bold":true},{"translate":"ms.mode.2.desc","fallback":"跳过收集阶段，直接进入充能阶段","bold":false}]
execute if score $mode setting matches 2 run tellraw @a [{"text":"» ","bold":true,"color":"gray"},{"translate":"ms.mode.nostat","fallback":"该模式不计算经验值，亦不计入统计数据","bold":false}]
execute if score $mode setting matches 2 run data merge storage ms:mode {start:"2",cancel:"1"}