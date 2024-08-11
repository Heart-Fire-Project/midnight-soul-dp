tellraw @s ""
kill @e[tag=ability_entity]

# 技能
execute if data storage ms:ability {"0":true} run tellraw @s [{"translate":"ms.skill.0","fallback":"技能","color":"red"}," »"]
execute if score @s skill matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"red"},{"translate":"ms.ability.random","fallback":"随机选择"},{"text":"]"}]',Tags:["skill-0","ability_entity"]}
execute unless score @s skill matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.ability.random","fallback":"随机选择"},{"text":"]"}]',Tags:["skill-0","ability_entity"]}
execute if score @s skill matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"red"},{"translate":"ms.skill.001","fallback":"虔诚力场"},{"text":"]"}]',Tags:["skill-1","ability_entity"]}
execute unless score @s skill matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.skill.001","fallback":"虔诚力场"},{"text":"]"}]',Tags:["skill-1","ability_entity"]}
execute if score @s skill matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"red"},{"translate":"ms.skill.002","fallback":"灵力掌控"},{"text":"]"}]',Tags:["skill-2","ability_entity"]}
execute unless score @s skill matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.skill.002","fallback":"灵力掌控"},{"text":"]"}]',Tags:["skill-2","ability_entity"]}
execute if score @s skill matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"red"},{"translate":"ms.skill.003","fallback":"唤灵留迹"},{"text":"]"}]',Tags:["skill-3","ability_entity"]}
execute unless score @s skill matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.skill.003","fallback":"唤灵留迹"},{"text":"]"}]',Tags:["skill-3","ability_entity"]}
execute if score @s skill matches 4 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"red"},{"translate":"ms.skill.004","fallback":"恶灵诅咒"},{"text":"]"}]',Tags:["skill-4","ability_entity"]}
execute unless score @s skill matches 4 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.skill.004","fallback":"恶灵诅咒"},{"text":"]"}]',Tags:["skill-4","ability_entity"]}
execute if score @s skill matches 5 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"red"},{"translate":"ms.skill.005","fallback":"雾影阴霾"},{"text":"]"}]',Tags:["skill-5","ability_entity"]}
execute unless score @s skill matches 5 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.skill.005","fallback":"雾影阴霾"},{"text":"]"}]',Tags:["skill-5","ability_entity"]}
execute if data storage ms:ability {"0":true} run tellraw @s ["",{"selector":"@e[tag=skill-0]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5100"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=skill-1]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5101"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=skill-2]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5102"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=skill-3]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5103"},"hoverEvent":{"action":"show_text","contents":""}}]
execute if data storage ms:ability {"0":true} run tellraw @s ["",{"selector":"@e[tag=skill-4]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5104"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=skill-5]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5105"},"hoverEvent":{"action":"show_text","contents":""}}]

# 一天赋
execute if data storage ms:ability {"1":true} run tellraw @s [{"translate":"ms.talent.1","fallback":"一天赋","color":"gold"}," »"]
execute if score @s talent_1 matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.ability.random","fallback":"随机选择"},{"text":"]"}]',Tags:["talent_1-0","ability_entity"]}
execute unless score @s talent_1 matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.ability.random","fallback":"随机选择"},{"text":"]"}]',Tags:["talent_1-0","ability_entity"]}
execute if score @s talent_1 matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.001","fallback":"抱火寝薪"},{"text":"]"}]',Tags:["talent_1-1","ability_entity"]}
execute unless score @s talent_1 matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.001","fallback":"抱火寝薪"},{"text":"]"}]',Tags:["talent_1-1","ability_entity"]}
execute if score @s talent_2 matches 1 run data modify entity @e[tag=talent_1-1,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.001","fallback":"抱火寝薪"},{"text":"]"}]'
execute if score @s talent_1 matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.002","fallback":"火冒三丈"},{"text":"]"}]',Tags:["talent_1-2","ability_entity"]}
execute unless score @s talent_1 matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.002","fallback":"火冒三丈"},{"text":"]"}]',Tags:["talent_1-2","ability_entity"]}
execute if score @s talent_2 matches 2 run data modify entity @e[tag=talent_1-2,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.002","fallback":"火冒三丈"},{"text":"]"}]'
execute if score @s talent_1 matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.003","fallback":"祛灵十字"},{"text":"]"}]',Tags:["talent_1-3","ability_entity"]}
execute unless score @s talent_1 matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.003","fallback":"祛灵十字"},{"text":"]"}]',Tags:["talent_1-3","ability_entity"]}
execute if score @s talent_2 matches 3 run data modify entity @e[tag=talent_1-3,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.003","fallback":"祛灵十字"},{"text":"]"}]'
execute if score @s talent_1 matches 4 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.004","fallback":"隐于迷雾"},{"text":"]"}]',Tags:["talent_1-4","ability_entity"]}
execute unless score @s talent_1 matches 4 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.004","fallback":"隐于迷雾"},{"text":"]"}]',Tags:["talent_1-4","ability_entity"]}
execute if score @s talent_2 matches 4 run data modify entity @e[tag=talent_1-4,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.004","fallback":"隐于迷雾"},{"text":"]"}]'
execute if score @s talent_1 matches 5 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.005","fallback":"舍近求远"},{"text":"]"}]',Tags:["talent_1-5","ability_entity"]}
execute unless score @s talent_1 matches 5 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.005","fallback":"舍近求远"},{"text":"]"}]',Tags:["talent_1-5","ability_entity"]}
execute if score @s talent_2 matches 5 run data modify entity @e[tag=talent_1-5,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.005","fallback":"舍近求远"},{"text":"]"}]'
execute if score @s talent_1 matches 6 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.006","fallback":"共鸣感应"},{"text":"]"}]',Tags:["talent_1-6","ability_entity"]}
execute unless score @s talent_1 matches 6 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.006","fallback":"共鸣感应"},{"text":"]"}]',Tags:["talent_1-6","ability_entity"]}
execute if score @s talent_2 matches 6 run data modify entity @e[tag=talent_1-6,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.006","fallback":"共鸣感应"},{"text":"]"}]'
execute if score @s talent_1 matches 7 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.007","fallback":"碎片侵蚀"},{"text":"]"}]',Tags:["talent_1-7","ability_entity"]}
execute unless score @s talent_1 matches 7 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.007","fallback":"碎片侵蚀"},{"text":"]"}]',Tags:["talent_1-7","ability_entity"]}
execute if score @s talent_2 matches 7 run data modify entity @e[tag=talent_1-7,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.007","fallback":"碎片侵蚀"},{"text":"]"}]'
execute if data storage ms:ability {"1":true} run tellraw @s ["",{"selector":"@e[tag=talent_1-0]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5200"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_1-1]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5201"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_1-2]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5202"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_1-3]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5203"},"hoverEvent":{"action":"show_text","contents":""}}]
execute if data storage ms:ability {"1":true} run tellraw @s ["",{"selector":"@e[tag=talent_1-4]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5204"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_1-5]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5205"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_1-6]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5206"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_1-7]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5207"},"hoverEvent":{"action":"show_text","contents":""}}]

# 二天赋
execute if data storage ms:ability {"2":true} run tellraw @s [{"translate":"ms.talent.2","fallback":"二天赋","color":"gold"}," »"]
execute if score @s talent_2 matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.ability.random","fallback":"随机选择"},{"text":"]"}]',Tags:["talent_2-0","ability_entity"]}
execute unless score @s talent_2 matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.ability.random","fallback":"随机选择"},{"text":"]"}]',Tags:["talent_2-0","ability_entity"]}
execute if score @s talent_2 matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.001","fallback":"抱火寝薪"},{"text":"]"}]',Tags:["talent_2-1","ability_entity"]}
execute unless score @s talent_2 matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.001","fallback":"抱火寝薪"},{"text":"]"}]',Tags:["talent_2-1","ability_entity"]}
execute if score @s talent_1 matches 1 run data modify entity @e[tag=talent_2-1,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.001","fallback":"抱火寝薪"},{"text":"]"}]'
execute if score @s talent_2 matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.002","fallback":"火冒三丈"},{"text":"]"}]',Tags:["talent_2-2","ability_entity"]}
execute unless score @s talent_2 matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.002","fallback":"火冒三丈"},{"text":"]"}]',Tags:["talent_2-2","ability_entity"]}
execute if score @s talent_1 matches 2 run data modify entity @e[tag=talent_2-2,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.002","fallback":"火冒三丈"},{"text":"]"}]'
execute if score @s talent_2 matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.003","fallback":"祛灵十字"},{"text":"]"}]',Tags:["talent_2-3","ability_entity"]}
execute unless score @s talent_2 matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.003","fallback":"祛灵十字"},{"text":"]"}]',Tags:["talent_2-3","ability_entity"]}
execute if score @s talent_1 matches 3 run data modify entity @e[tag=talent_2-3,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.003","fallback":"祛灵十字"},{"text":"]"}]'
execute if score @s talent_2 matches 4 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.004","fallback":"隐于迷雾"},{"text":"]"}]',Tags:["talent_2-4","ability_entity"]}
execute unless score @s talent_2 matches 4 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.004","fallback":"隐于迷雾"},{"text":"]"}]',Tags:["talent_2-4","ability_entity"]}
execute if score @s talent_1 matches 4 run data modify entity @e[tag=talent_2-4,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.004","fallback":"隐于迷雾"},{"text":"]"}]'
execute if score @s talent_2 matches 5 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.005","fallback":"舍近求远"},{"text":"]"}]',Tags:["talent_2-5","ability_entity"]}
execute unless score @s talent_2 matches 5 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.005","fallback":"舍近求远"},{"text":"]"}]',Tags:["talent_2-5","ability_entity"]}
execute if score @s talent_1 matches 5 run data modify entity @e[tag=talent_2-5,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.005","fallback":"舍近求远"},{"text":"]"}]'
execute if score @s talent_2 matches 6 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.006","fallback":"共鸣感应"},{"text":"]"}]',Tags:["talent_2-6","ability_entity"]}
execute unless score @s talent_2 matches 6 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.006","fallback":"共鸣感应"},{"text":"]"}]',Tags:["talent_2-6","ability_entity"]}
execute if score @s talent_1 matches 6 run data modify entity @e[tag=talent_2-6,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.006","fallback":"共鸣感应"},{"text":"]"}]'
execute if score @s talent_2 matches 7 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gold"},{"translate":"ms.talent.007","fallback":"碎片侵蚀"},{"text":"]"}]',Tags:["talent_2-7","ability_entity"]}
execute unless score @s talent_2 matches 7 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.talent.007","fallback":"碎片侵蚀"},{"text":"]"}]',Tags:["talent_2-7","ability_entity"]}
execute if score @s talent_1 matches 7 run data modify entity @e[tag=talent_2-7,limit=1] CustomName set value '[{"text":"[","color":"dark_gray"},{"translate":"ms.talent.007","fallback":"碎片侵蚀"},{"text":"]"}]'
execute if data storage ms:ability {"2":true} run tellraw @s ["",{"selector":"@e[tag=talent_2-0]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5300"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_2-1]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5301"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_2-2]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5302"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_2-3]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5303"},"hoverEvent":{"action":"show_text","contents":""}}]
execute if data storage ms:ability {"2":true} run tellraw @s ["",{"selector":"@e[tag=talent_2-4]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5304"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_2-5]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5305"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_2-6]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5306"},"hoverEvent":{"action":"show_text","contents":""}}," ",{"selector":"@e[tag=talent_2-7]","clickEvent":{"action":"run_command","value":"/trigger interact_check set 5307"},"hoverEvent":{"action":"show_text","contents":""}}]

tellraw @s [{"text":"» ","color":"yellow","bold":true},{"translate":"ms.ability.check","fallback":"点此以确认并结束你的能力选择","bold":false,"clickEvent":{"action":"run_command","value":"/trigger interact_check set 5400"}}]