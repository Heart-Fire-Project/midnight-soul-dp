tellraw @s [{"text":"\n\n\n\n\n\n\n » ","color":"blue","bold":true},{"translate":"ms.debug.panel","fallback":"调试面板"}]
kill @e[tag=debug_entity]

tellraw @s {"translate":"ms.debug.mode","fallback":"模式 »","color":"#7367F0"}
execute if score $mode setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.mode.1","fallback":"灵气碎片"},{"text":"]"}]',Tags:["mode-1","debug_entity"]}
execute unless score $mode setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.mode.1","fallback":"灵气碎片"},{"text":"]"}]',Tags:["mode-1","debug_entity"]}
execute if score $mode setting matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.mode.2","fallback":"针锋奔逃"},{"text":"]"}]',Tags:["mode-2","debug_entity"]}
execute unless score $mode setting matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.mode.2","fallback":"针锋奔逃"},{"text":"]"}]',Tags:["mode-2","debug_entity"]}
tellraw @s ["",{"selector":"@e[tag=mode-1]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -101"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.mode.desc.1","fallback":"收集碎片，开启传送门，并最终逃离"}}}," ",{"selector":"@e[tag=mode-2]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -102"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.mode.desc.2","fallback":"直接开启传送门……然后快跑！"}}}]

tellraw @s {"translate":"ms.debug.map","fallback":"地图 »","color":"#7367F0"}
execute if score $map setting matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.map.0","fallback":"随机地图"},{"text":"]"}]',Tags:["map-0","debug_entity"]}
execute unless score $map setting matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.map.0","fallback":"随机地图"},{"text":"]"}]',Tags:["map-0","debug_entity"]}
execute if score $map setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.map.1","fallback":"聚光圣殿"},{"text":"]"}]',Tags:["map-1","debug_entity"]}
execute unless score $map setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.map.1","fallback":"聚光圣殿"},{"text":"]"}]',Tags:["map-1","debug_entity"]}
execute if score $map setting matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.map.2","fallback":"镇灵塔楼"},{"text":"]"}]',Tags:["map-2","debug_entity"]}
execute unless score $map setting matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.map.2","fallback":"镇灵塔楼"},{"text":"]"}]',Tags:["map-2","debug_entity"]}
execute if score $map setting matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.map.3","fallback":"山间湖谷"},{"text":"]"}]',Tags:["map-3","debug_entity"]}
execute unless score $map setting matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.map.3","fallback":"山间湖谷"},{"text":"]"}]',Tags:["map-3","debug_entity"]}
tellraw @s ["",{"selector":"@e[tag=map-0]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -200"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.map.index","fallback":"大小 %s / %s 复杂","with":[{"text":"?","obfuscated":true},{"text":"?","obfuscated":true}]}}}," ",{"selector":"@e[tag=map-1]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -201"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.map.index","fallback":"大小 %s / %s 复杂","with":[{"text":"3","color":"yellow"},{"text":"2","color":"green"}]}}}," ",{"selector":"@e[tag=map-2]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -202"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.map.index","fallback":"大小 %s / %s 复杂","with":[{"text":"2","color":"green"},{"text":"4","color":"gold"}]}}}," ",{"selector":"@e[tag=map-3]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -203"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.map.index","fallback":"大小 %s / %s 复杂","with":[{"text":"5","color":"red"},{"text":"3","color":"yellow"}]}}}]
tellraw @s ["",{"translate":"ms.debug.tp","fallback":"[传送至选中地图]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -299"}}," ",{"translate":"ms.debug.lock","fallback":"[上锁工具]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -306"}}]

tellraw @s {"translate":"ms.debug.mark","fallback":"标记 »","color":"#7367F0"}
tellraw @s ["",{"translate":"ms.debug.mark.blue","fallback":"[灵魂碎片]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger interact_check set -301"}}," ",{"translate":"ms.debug.mark.gold","fallback":"[灵魂之灯]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger interact_check set -302"}}," ",{"translate":"ms.debug.mark.purple","fallback":"[传送门]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger interact_check set -303"}}," ",{"translate":"ms.debug.mark.gray","fallback":"[灵魂宝物盒]","color":"#CCCCCC","clickEvent":{"action":"run_command","value":"/trigger interact_check set -304"}}," ",{"translate":"ms.debug.mark.red","fallback":"[删除标记]","color":"red","clickEvent":{"action":"run_command","value":"/trigger interact_check set -305"}}]
execute if score $show_mark setting matches 0 run tellraw @s ["",{"translate":"ms.debug.show_mark","fallback":"[展示标记]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger interact_check set -300"}}," ",{"translate":"ms.debug.mark.count","fallback":"[统计数量]","color":"white","clickEvent":{"action":"run_command","value":"/trigger interact_check set -399"}}]
execute if score $show_mark setting matches 1 run tellraw @s ["",{"translate":"ms.debug.show_mark","fallback":"[展示标记]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger interact_check set -300"}}," ",{"translate":"ms.debug.mark.count","fallback":"[统计数量]","color":"white","clickEvent":{"action":"run_command","value":"/trigger interact_check set -399"}}]

tellraw @s {"translate":"ms.debug.game","fallback":"游戏 »","color":"#7367F0"}
execute if score $ability_apply setting matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.debug.ability.0","fallback":"全部随机"},{"text":"]"}]',Tags:["display1","debug_entity"]}
execute if score $ability_apply setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"green"},{"translate":"ms.debug.ability.1","fallback":"仅自选技能"},{"text":"]"}]',Tags:["display1","debug_entity"]}
execute if score $ability_apply setting matches 2 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"green"},{"translate":"ms.debug.ability.2","fallback":"仅自选天赋"},{"text":"]"}]',Tags:["display1","debug_entity"]}
execute if score $ability_apply setting matches 3 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"green"},{"translate":"ms.debug.ability.3","fallback":"仅自选一天赋"},{"text":"]"}]',Tags:["display1","debug_entity"]}
execute if score $ability_apply setting matches 4 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"green"},{"translate":"ms.debug.ability.4","fallback":"自选技能与一天赋"},{"text":"]"}]',Tags:["display1","debug_entity"]}
execute if score $ability_apply setting matches 5 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.debug.ability.5","fallback":"全部自选"},{"text":"]"}]',Tags:["display1","debug_entity"]}
tellraw @s ["",{"translate":"ms.debug.restore","fallback":"[恢复默认]","color":"white","clickEvent":{"action":"run_command","value":"/trigger interact_check set -400"}}," ",{"selector":"@e[tag=display1]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -401"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.debug.ability.desc","fallback":"调整能力分配方式"}}}]
function base:caculate/tenths {value:"$collect_speed",source:"setting"}
execute unless score $collect_speed setting matches 1010000 run tellraw @s ["",{"translate":"ms.debug.cls","fallback":"收集速度"},"   ",{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger interact_check set -411"}},"  ",{"score":{"objective":"temp2","name":"$front"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"objective":"temp2","name":"$behind"},"color":"aqua"},{"text":"x  ","color":"blue"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger interact_check set -412"}}]
execute if score $collect_speed setting matches 1010000 run tellraw @s ["",{"translate":"ms.debug.cls","fallback":"收集速度"},"   ",{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger interact_check set -411"}},{"text":"  Inf","color":"aqua"},{"text":"x  ","color":"blue"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger interact_check set -412"}}]
function base:caculate/tenths {value:"$cooldown_speed",source:"setting"}
execute unless score $cooldown_speed setting matches 1010000 run tellraw @s ["",{"translate":"ms.debug.cds","fallback":"冷却速度"},"   ",{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger interact_check set -421"}},"  ",{"score":{"objective":"temp2","name":"$front"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"objective":"temp2","name":"$behind"},"color":"aqua"},{"text":"x  ","color":"blue"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger interact_check set -422"}}]
execute if score $cooldown_speed setting matches 1010000 run tellraw @s ["",{"translate":"ms.debug.cds","fallback":"冷却速度"},"   ",{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger interact_check set -421"}},{"text":"  Inf","color":"aqua"},{"text":"x  ","color":"blue"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger interact_check set -422"}}]
tellraw @s ["",{"translate":"ms.debug.echo","fallback":"回响机率"},"   ",{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger interact_check set -431"}},"  ",{"score":{"objective":"setting","name":"$echo_chance"},"color":"aqua"},{"text":".%  ","color":"blue"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger interact_check set -432"}}]

tellraw @s {"translate":"ms.debug.system","fallback":"系统 »","color":"#7367F0"}
execute if score $setting_lock setting matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.debug.setting_lock","fallback":"限制设置"},{"text":"]"}]',Tags:["display2","debug_entity"]}
execute if score $setting_lock setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.debug.setting_lock","fallback":"限制设置"},{"text":"]"}]',Tags:["display2","debug_entity"]}
execute if score $game_lock setting matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.debug.game_lock","fallback":"锁定游戏"},{"text":"]"}]',Tags:["display3","debug_entity"]}
execute if score $game_lock setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.debug.game_lock","fallback":"锁定游戏"},{"text":"]"}]',Tags:["display3","debug_entity"]}
execute if score $ingame_score setting matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.debug.ingame_score","fallback":"表现分追踪"},{"text":"]"}]',Tags:["display4","debug_entity"]}
execute if score $ingame_score setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.debug.ingame_score","fallback":"表现分追踪"},{"text":"]"}]',Tags:["display4","debug_entity"]}
execute if score $show_f3 setting matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.debug.show_f3","fallback":"详细调试屏幕"},{"text":"]"}]',Tags:["display5","debug_entity"]}
execute if score $show_f3 setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.debug.show_f3","fallback":"详细调试屏幕"},{"text":"]"}]',Tags:["display5","debug_entity"]}
execute if score $send_feedback setting matches 0 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"gray"},{"translate":"ms.debug.send_feedback","fallback":"返回命令反馈"},{"text":"]"}]',Tags:["display6","debug_entity"]}
execute if score $send_feedback setting matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"[","color":"aqua"},{"translate":"ms.debug.send_feedback","fallback":"返回命令反馈"},{"text":"]"}]',Tags:["display6","debug_entity"]}
tellraw @s ["",{"translate":"ms.debug.start","fallback":"[强制开始]","color":"#64B3F4","clickEvent":{"action":"run_command","value":"/trigger interact_check set -501"}}," ",{"translate":"ms.debug.end","fallback":"[强制结束]","color":"#C2E59C","clickEvent":{"action":"run_command","value":"/trigger interact_check set -502"}}," ",{"translate":"ms.debug.init","fallback":"[全局重置]","color":"red","clickEvent":{"action":"run_command","value":"/trigger interact_check set -500"}}]
tellraw @s ["",{"selector":"@e[tag=display2]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -503"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.debug.setting_lock.desc","fallback":"仅管理员可调整设置"}}}," ",{"selector":"@e[tag=display3]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -504"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.debug.game_lock","fallback":"阻止游戏开始"}}}," ",{"selector":"@e[tag=display4]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -505"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.debug.ingame_score.desc","fallback":"在游戏内显示表现分来源"}}}]
tellraw @s ["",{"selector":"@e[tag=display5]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -506"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.debug.show_f3.desc","fallback":"在 F3 中显示坐标等信息"}}}," ",{"selector":"@e[tag=display6]","clickEvent":{"action":"run_command","value":"/trigger interact_check set -507"},"hoverEvent":{"action":"show_text","contents":{"translate":"ms.debug.send_feedback.desc","fallback":"接收命令运行结果"}}}," ",{"translate":"ms.debug.datatransform","fallback":"[数据转移]","color":"white","clickEvent":{"action":"suggest_command","value":"/function main:data_transform {from:\u0022PLAYERNAME\u0022,to:\u0022PLAYERNAME\u0022}"}},"\n "]

playsound ui.button.click player @s 0 1000000 0 1000000
execute as @s[team=!admin] run function debug:join_admin