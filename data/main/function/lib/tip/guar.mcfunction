function base:random {min:"1",max:"12"}
tellraw @s "\n"

execute if score $random temp2 matches 01 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.1g","fallback":"灵魂之灯不只是救助点，还可以是一个诱饵","bold":false}]
execute if score $random temp2 matches 02 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.2g","fallback":"你虽然不能持有灵魂宝物，但你可以让灵魂也无法持有……","bold":false}]
execute if score $random temp2 matches 03 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.3g","fallback":"多开盒，我指的是游戏里","bold":false}]
execute if score $random temp2 matches 04 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.4g","fallback":"传送门可不止有一个，别一直守着一个门不放","bold":false}]
execute if score $random temp2 matches 05 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.5g","fallback":"你探测的气息最高只能到异常，并不是说你还不够近","bold":false}]
execute if score $random temp2 matches 06 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.6","fallback":"场地内奇怪的结构可能只是北·彩蛋·遥先生留下的痕迹","bold":false}]
execute if score $random temp2 matches 07 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.7g","fallback":"只要你击中了灵魂，无论是否造成伤害都将进入擦刀阶段","bold":false}]
execute if score $random temp2 matches 08 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.8","fallback":"以普遍理性而言，悬浮在空中的东西底下都有个啥撑着它……","bold":false}]
execute if score $random temp2 matches 09 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.9","fallback":"你被卡住的概率很小，但绝不是 0，要是真发生了记得点一下反馈","bold":false}]
execute if score $random temp2 matches 10 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.10","fallback":"有任何建议都可以通过最后的反馈链接提交给我们！","bold":false}]
execute if score $random temp2 matches 11 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.11","fallback":"心火计划诚招：建筑/策划/美工/建筑/程序/建筑","bold":false}]
execute if score $random temp2 matches 12 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.12","fallback":"如果没有明确规定……把实体渲染距离拉满是一个好选择！","bold":false}]