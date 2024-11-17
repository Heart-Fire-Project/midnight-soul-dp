tag @s remove can_equip
tellraw @s ""

# 解锁条件
execute if score @s temp matches 0 run tag @s add can_equip
execute if score @s temp matches 1 run tag @s add can_equip
execute if score @s temp matches 2 run tag @s add can_equip
execute if score @s[scores={extra.milestone=6..}] temp matches 3 run tag @s add can_equip

# 可以使用
execute as @s[tag=can_equip] run scoreboard players operation @s extra.headset = @s temp
playsound entity.arrow.hit_player player @s[tag=can_equip] 0 1000000 0 1000000
tellraw @s[tag=can_equip,scores={temp=0}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.headset","fallback":"饰品装配"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.headset.0","fallback":"空气","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=1}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.headset","fallback":"饰品装配"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.headset.1","fallback":"鬼或独角兽","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=2}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.headset","fallback":"饰品装配"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.headset.2","fallback":"战地通信员","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=3}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.headset","fallback":"饰品装配"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.headset.3","fallback":"紫水晶皇冠","color":"green"}]}]

# 不得使用
playsound block.note_block.didgeridoo player @s[tag=!can_equip] 1000000 0 1000000 1000000
tellraw @s[tag=!can_equip] [{"text":"» ","color":"red","bold":true},{"translate":"ms.extra.locked","fallback":"你还未解锁该装饰品","bold":false}]