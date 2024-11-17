function base:random {min:"1",max:"15"}
tellraw @s "\n"

execute if score $random temp2 matches 01 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.1s","fallback":"正在赶往灵魂之灯的可不止是你的队友！","bold":false}]
execute if score $random temp2 matches 02 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.2s","fallback":"灵魂宝物们都不弱，不过你只能拿一个","bold":false}]
execute if score $random temp2 matches 03 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.3s","fallback":"有时灵魂宝物盒会伴有减益效果，开启它以绝后患！","bold":false}]
execute if score $random temp2 matches 04 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.4s","fallback":"被堵门了？别急，传送门可不止有一个！","bold":false}]
execute if score $random temp2 matches 05 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.5s","fallback":"注意你的气息探测条！不过也不要太相信它……","bold":false}]
execute if score $random temp2 matches 06 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.6s","fallback":"有的宝物能救你的队友于水火之中……你问为什么不是你？","bold":false}]
execute if score $random temp2 matches 07 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.7s","fallback":"存活的时间够久传送门就会直接出现，但守卫者也会被强化！","bold":false}]
execute if score $random temp2 matches 08 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.8","fallback":"场地内奇怪的结构可能只是北·彩蛋·遥先生留下的痕迹","bold":false}]
execute if score $random temp2 matches 09 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.9","fallback":"以普遍理性而言，悬浮在空中的东西底下都有个啥撑着它……","bold":false}]
execute if score $random temp2 matches 10 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.10","fallback":"你被卡住的概率很小，但绝不是 0，要是真发生了记得点一下反馈","bold":false}]
execute if score $random temp2 matches 11 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.11","fallback":"有任何建议都可以通过最后的反馈链接提交给我们！","bold":false}]
execute if score $random temp2 matches 12 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.12","fallback":"心火计划诚招：建筑/策划/美工/建筑/程序/建筑","bold":false}]
execute if score $random temp2 matches 13 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.13","fallback":"如果没有明确规定……把实体渲染距离拉满是一个好选择！","bold":false}]
execute if score $random temp2 matches 14 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.14","fallback":"如果你嫌我们这些提示烦的话，可以在物品栏里关掉……","bold":false}]
execute if score $random temp2 matches 15 run tellraw @s [{"text":"» ","color":"#7367F0","bold":true},{"text":"Tip! ","bold":false},{"translate":"ms.tip.15","fallback":"很久很久以前，守卫者的擦刀只有三秒……最后大家都死光啦！","bold":false}]