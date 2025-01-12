# 添加基础 tag
tag @s add interacting
tag @s[team=soul] add blue_interact
tag @s[team=soul] add gold_interact
tag @s add gray_interact

# 判断交互类型
execute unless score @s sneak_time matches 1.. run tag @s remove interacting
execute unless entity @e[tag=blue,distance=..0.5] run tag @s remove blue_interact
execute unless entity @e[tag=gold,distance=..0.5] run tag @s remove gold_interact
execute unless entity @e[tag=gray,distance=..0.5] run tag @s remove gray_interact

# 交互提示
execute as @s[tag=blue_hint] run title @s actionbar [{"translate":"ms.hint.blue","fallback":"长按 [%s] 以收集","with":[{"keybind":"key.sneak"}],"color":"blue"}]
execute as @s[tag=gold_hint] run title @s actionbar [{"translate":"ms.hint.gold","fallback":"长按 [%s] 以点亮","with":[{"keybind":"key.sneak"}],"color":"gold"}]
execute as @s[tag=gray_hint] run title @s actionbar [{"translate":"ms.hint.gray","fallback":"长按 [%s] 以打开","with":[{"keybind":"key.sneak"}],"color":"gray"}]
execute as @s[tag=!interacting,tag=blue_interact,team=soul,scores={setting.interact_hint=1}] run tag @s add blue_hint
execute as @s[tag=!interacting,tag=gold_interact,team=soul,scores={setting.interact_hint=1}] run tag @s add gold_hint
execute as @s[tag=!interacting,tag=gray_interact,scores={setting.interact_hint=1}] run tag @s add gray_hint
execute as @s[tag=blue_hint,tag=!blue_interact] run title @s actionbar ""
execute as @s[tag=gold_hint,tag=!gold_interact] run title @s actionbar ""
execute as @s[tag=gray_hint,tag=!gray_interact] run title @s actionbar ""
tag @s[tag=interacting] remove blue_hint
tag @s[tag=interacting] remove gold_hint
tag @s[tag=interacting] remove gray_hint
tag @s[tag=!blue_interact] remove blue_hint
tag @s[tag=!gold_interact] remove gold_hint
tag @s[tag=!gray_interact] remove gray_hint

# 天赋判定：进行交互时
execute as @s[scores={talent_1=1},team=soul,tag=blue_interact,tag=interacting,tag=talent_1_on] at @s run function main:state/3/ability/talent/001b
execute as @s[scores={talent_2=1},team=soul,tag=blue_interact,tag=interacting,tag=talent_2_on] at @s run function main:state/3/ability/talent/001b
execute as @s[scores={talent_1=7},team=soul,tag=blue_interact,tag=interacting] at @s run function main:state/3/ability/talent/007
execute as @s[scores={talent_2=7},team=soul,tag=blue_interact,tag=interacting] at @s run function main:state/3/ability/talent/007

# 刷新进程
tag @s[tag=!blue_interact,tag=!gold_interact,tag=!gray_interact] remove interacting
scoreboard players reset @s[tag=!interacting] countdown
scoreboard players operation @s[tag=interacting] countdown += $interact_speed setting

# 收集完成
execute as @s[tag=blue_interact,scores={countdown=700..}] as @e[tag=blue,distance=..0.5] at @s run function main:state/3/interaction/blue with storage ms:map
execute as @s[tag=gold_interact,scores={countdown=1400..}] as @e[tag=gold,distance=..0.5] at @s run function main:state/3/interaction/gold
execute as @s[tag=gray_interact,scores={countdown=1000..}] as @e[tag=gray,distance=..0.5] at @s run function main:state/3/interaction/gray