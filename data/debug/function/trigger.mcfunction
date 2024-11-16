execute if score @s interact_check matches -101 run function debug:sub/select {type:"mode",num:"1"}
execute if score @s interact_check matches -102 run function debug:sub/select {type:"mode",num:"2"}

execute if score @s interact_check matches -200 run function debug:sub/select {type:"map",num:"0"}
execute if score @s interact_check matches -201 run function debug:sub/select {type:"map",num:"1"}
execute if score @s interact_check matches -202 run function debug:sub/select {type:"map",num:"2"}
execute if score @s interact_check matches -203 run function debug:sub/select {type:"map",num:"3"}
execute if score @s interact_check matches -299 run function debug:sub/map_tp

execute if score @s interact_check matches -300 run function debug:sub/binary {storage:"setting",target:"show_mark"}
execute if score @s interact_check matches -301 run give @s warden_spawn_egg[custom_name='{"translate":"ms.blue","fallback":"灵魂碎片","color":"blue","italic":false}',custom_model_data=79011,hide_additional_tooltip={},entity_data={id:shulker,Color:11,Tags:[summon_marker,summon_blue]}]
execute if score @s interact_check matches -302 run give @s blaze_spawn_egg[custom_name='{"translate":"ms.purple","fallback":"灵魂之灯","color":"gold","italic":false}',custom_model_data=79001,hide_additional_tooltip={},entity_data={id:shulker,Color:1,Tags:[summon_marker,summon_gold]}]
execute if score @s interact_check matches -303 run give @s breeze_spawn_egg[custom_name='{"translate":"ms.gold","fallback":"传送门","color":"light_purple","italic":false}',custom_model_data=79002,hide_additional_tooltip={},entity_data={id:shulker,Color:2,Tags:[summon_marker,summon_purple]}]
execute if score @s interact_check matches -304 run give @s evoker_spawn_egg[custom_name='{"translate":"ms.gray","fallback":"灵魂宝物盒","color":"gray","italic":false}',custom_model_data=79008,hide_additional_tooltip={},entity_data={id:shulker,Color:8,Tags:[summon_marker,summon_gray]}]
execute if score @s interact_check matches -305 run give @s strider_spawn_egg[custom_name='{"translate":"ms.red","fallback":"删除标记","color":"red","italic":false}',custom_model_data=79014,hide_additional_tooltip={},entity_data={id:shulker,Color:14,Tags:[summon_marker,summon_red]}]
execute if score @s interact_check matches -306 run give @s ghast_spawn_egg[custom_name='{"translate":"ms.lock","fallback":"上锁工具","color":"white","italic":false}',custom_model_data=79000,hide_additional_tooltip={},entity_data={id:shulker,Color:0,Tags:[summon_marker,summon_lock]}]
execute if score @s interact_check matches -399 at @s run function debug:sub/mark/count

execute if score @s interact_check matches -400 run function debug:sub/restore
execute if score @s interact_check matches -401 run function debug:sub/next {type:"ability_apply",limit:"6"}
execute if score @s interact_check matches -411 run function debug:sub/speed_minus {type:"collect"}
execute if score @s interact_check matches -412 run function debug:sub/speed_add {type:"collect"}
execute if score @s interact_check matches -421 run function debug:sub/speed_minus {type:"cooldown"}
execute if score @s interact_check matches -422 run function debug:sub/speed_add {type:"cooldown"}
execute if score @s interact_check matches -431 run function debug:sub/chance_minus {type:"echo"}
execute if score @s interact_check matches -432 run function debug:sub/chance_add {type:"echo"}

execute if score @s interact_check matches -500 run function debug:sub/init_confirm
execute if score @s interact_check matches -501 run function debug:sub/state1
execute if score @s interact_check matches -502 run function debug:sub/state5
execute if score @s interact_check matches -503 run function debug:sub/binary {storage:"setting",target:"setting_lock"}
execute if score @s interact_check matches -504 run function debug:sub/binary {storage:"setting",target:"game_lock"}
execute if score @s interact_check matches -505 run function debug:sub/binary {storage:"setting",target:"reduce_f3"}
execute if score @s interact_check matches -506 run function debug:sub/binary {storage:"setting",target:"send_feedback"}
execute if score @s interact_check matches -599 run function main:init

execute if score @s interact_check matches -999 run function debug:leave_admin

scoreboard players set @s interact_check 0