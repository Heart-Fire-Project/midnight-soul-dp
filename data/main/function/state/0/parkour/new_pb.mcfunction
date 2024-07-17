execute unless entity @s[tag=hidden_parkour] run function main:state/0/parkour/time_format {source:"stat_parkour_5"}
execute if entity @s[tag=hidden_parkour] run function main:state/0/parkour/time_format {source:"stat_parkour_5"}

execute if score @s parkour_tick matches -37 run title @s actionbar ""
execute if score @s parkour_tick matches -36 run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | ",{"storage":"ms:string","nbt":"result"}]
execute if score @s parkour_tick matches -35 run playsound entity.breeze.charge player @s 0 1000000 0 1000000
execute if score @s parkour_tick matches -35 run title @s actionbar ""
execute if score @s parkour_tick matches -34 run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | ",{"storage":"ms:string","nbt":"result"}]
execute if score @s parkour_tick matches -31 run title @s actionbar ""
execute if score @s parkour_tick matches -30 run title @s actionbar [{"translate":"ms.parkour.finish","fallback":"跑酷已完成","color":"green"}," | ",{"storage":"ms:string","nbt":"result"}]
execute if score @s parkour_tick matches -28 run title @s actionbar ""

execute at @s if score @s parkour_tick matches -27 run particle totem_of_undying ~ ~0.2 ~ 0.1 0.1 0.1 0.5 1024 force @s
execute if score @s parkour_tick matches -27 run playsound item.totem.use player @s 0 1000000 0 1000000
execute if score @s parkour_tick matches -27 run title @s actionbar [{"text":"< ","color":"gold"},{"translate":"ms.parkour.newpb","fallback":"新个人最佳"}," | ",{"storage":"ms:string","nbt":"result"}," >"]
execute if score @s parkour_tick matches -26 run title @s actionbar [{"text":"<< ","color":"gold"},{"translate":"ms.parkour.newpb","fallback":"新个人最佳"}," | ",{"storage":"ms:string","nbt":"result"}," >>"]
execute if score @s parkour_tick matches -25 run title @s actionbar [{"text":"<<  ","color":"gold"},{"translate":"ms.parkour.newpb","fallback":"新个人最佳"}," | ",{"storage":"ms:string","nbt":"result"},"  >>"]
execute if score @s parkour_tick matches -24 run title @s actionbar [{"text":"<<   ","color":"gold"},{"translate":"ms.parkour.newpb","fallback":"新个人最佳"}," | ",{"storage":"ms:string","nbt":"result"},"   >>"]
execute if score @s parkour_tick matches -23 run title @s actionbar [{"text":"<<    ","color":"gold"},{"translate":"ms.parkour.newpb","fallback":"新个人最佳"}," | ",{"storage":"ms:string","nbt":"result"},"    >>"]
execute if score @s parkour_tick matches -22 run title @s actionbar [{"text":"<<     ","color":"gold"},{"translate":"ms.parkour.newpb","fallback":"新个人最佳"}," | ",{"storage":"ms:string","nbt":"result"},"     >>"]
execute if score @s parkour_tick matches -21 run title @s actionbar [{"text":"<<      ","color":"gold"},{"translate":"ms.parkour.newpb","fallback":"新个人最佳"}," | ",{"storage":"ms:string","nbt":"result"},"      >>"]
execute if score @s parkour_tick matches -20 run title @s actionbar [{"text":"<       ","color":"gold"},{"translate":"ms.parkour.newpb","fallback":"新个人最佳"}," | ",{"storage":"ms:string","nbt":"result"},"       >"]
execute if score @s parkour_tick matches -19 run title @s actionbar [{"translate":"ms.parkour.newpb","fallback":"新个人最佳","color":"gold"}," | ",{"storage":"ms:string","nbt":"result"}]
execute if score @s parkour_tick matches -16 run title @s actionbar ""
execute if score @s parkour_tick matches -13 run title @s actionbar [{"translate":"ms.parkour.newpb","fallback":"新个人最佳","color":"gold"}," | ",{"storage":"ms:string","nbt":"result"}]
execute if score @s parkour_tick matches -10 run title @s actionbar ""
execute if score @s parkour_tick matches -07 run title @s actionbar [{"translate":"ms.parkour.newpb","fallback":"新个人最佳","color":"gold"}," | ",{"storage":"ms:string","nbt":"result"}]
execute if score @s parkour_tick matches -04 run title @s actionbar ""
execute if score @s parkour_tick matches -01 run title @s actionbar [{"translate":"ms.parkour.newpb","fallback":"新个人最佳","color":"gold"}," | ",{"storage":"ms:string","nbt":"result"}]
execute if score @s parkour_tick matches -01 run tag @s remove hidden_parkour

scoreboard players add @s parkour_tick 1