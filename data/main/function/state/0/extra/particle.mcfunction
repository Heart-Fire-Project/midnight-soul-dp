tag @s remove can_equip
tellraw @s ""

# 解锁条件
execute if score @s[scores={stat.level=000..}] temp matches 0 run tag @s add can_equip
execute if score @s[scores={stat.level=010..}] temp matches 1 run tag @s add can_equip
execute if score @s[scores={stat.level=025..}] temp matches 2 run tag @s add can_equip
execute if score @s[scores={stat.level=040..}] temp matches 3 run tag @s add can_equip
execute if score @s[scores={stat.level=055..}] temp matches 4 run tag @s add can_equip
execute if score @s[scores={stat.level=070..}] temp matches 5 run tag @s add can_equip
execute if score @s[scores={stat.level=085..}] temp matches 6 run tag @s add can_equip
execute if score @s[scores={stat.level=100..}] temp matches 7 run tag @s add can_equip
execute if score @s[scores={stat.level=114..}] temp matches 8 run tag @s add can_equip
execute if score @s[scores={stat.level=128..}] temp matches 9 run tag @s add can_equip

# 可以使用
execute as @s[tag=can_equip] run scoreboard players operation @s extra.particle = @s temp
playsound entity.arrow.hit_player player @s[tag=can_equip] 0 1000000 0 1000000
tellraw @s[tag=can_equip,scores={temp=0}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.0","fallback":"无粒子效果","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=1}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.1","fallback":"午夜繁星","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=2}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.2","fallback":"氤氲灵气","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=3}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.3","fallback":"霜凝冰痕","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=4}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.4","fallback":"点灯施援","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=5}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.5","fallback":"灵迹随踪","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=6}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.6","fallback":"万象环身","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=7}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.7","fallback":"绚彩粉墨","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=8}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.8","fallback":"桃起樱落","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=9}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.particle","fallback":"粒子效果"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.particle.9","fallback":"双生魂焰","color":"green"}]}]

# 不得使用
playsound block.note_block.didgeridoo player @s[tag=!can_equip] 1000000 0 1000000 1000000
tellraw @s[tag=!can_equip] [{"text":"» ","color":"red","bold":true},{"translate":"ms.extra.locked","fallback":"你还未解锁该装饰品","bold":false}]