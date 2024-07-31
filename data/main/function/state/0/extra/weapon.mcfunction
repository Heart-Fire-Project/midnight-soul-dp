tag @s remove can_equip
tellraw @s ""

execute if score @s temp matches 0 run tag @s add can_equip
execute if score @s temp matches 1 run tag @s add can_equip
execute if score @s temp matches 2 run tag @s add can_equip
execute if score @s temp matches 3 run tag @s add can_equip
execute if score @s[scores={extra_milestone=3..}] temp matches 4 run tag @s add can_equip

execute as @s[tag=can_equip] run scoreboard players operation @s extra_weapon = @s temp
playsound entity.arrow.hit_player player @s[tag=can_equip] 0 1000000 0 1000000
tellraw @s[tag=can_equip,scores={temp=0}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.extra.weapon","fallback":"武器样式"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.extra.weapon.0","fallback":"祛灵刃","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=1}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.extra.weapon","fallback":"武器样式"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.extra.weapon.1","fallback":"祛灵刃 α","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=2}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.extra.weapon","fallback":"武器样式"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.extra.weapon.2","fallback":"祛灵刃 β","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=3}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.extra.weapon","fallback":"武器样式"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.extra.weapon.3","fallback":"破魂锤","color":"green"}]}]
tellraw @s[tag=can_equip,scores={temp=4}] ["",{"text":"» ","color":"green","bold":true},{"translate":"ms.extra.weapon","fallback":"武器样式"},{"translate":"ms.extra.switch","fallback":"已切换至 %s","with":[{"translate":"ms.extra.weapon.4","fallback":"散炽棍","color":"green"}]}]

playsound block.note_block.didgeridoo player @s[tag=!can_equip] 1000000 0 1000000 1000000
tellraw @s[tag=!can_equip] [{"text":"» ","color":"red","bold":true},{"translate":"ms.extra.locked","fallback":"你还未解锁该装饰品","bold":false}]