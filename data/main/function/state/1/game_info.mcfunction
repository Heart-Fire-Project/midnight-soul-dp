# 创立专用计分板
scoreboard objectives remove info
scoreboard objectives add info dummy ["     ",{"translate":"ms.scoreboard.info","fallback":"接下来……"},"     "]

scoreboard players set $blank0 info 8
scoreboard players display name $blank0 info ""
scoreboard players display numberformat $blank0 info blank

# 第一日，模式标题
scoreboard players set $mode info 7
scoreboard players display name $mode info [{"translate":"ms.mode","fallback":"模式"},{"text":" »"}]

# 第二日，判断模式
scoreboard players operation $mode data = $mode setting
execute if score $mode data matches 1 run scoreboard players display numberformat $mode info fixed {"translate":"ms.mode.1","fallback":"灵气碎片","color":"#7367F0"}
execute if score $mode data matches 2 run scoreboard players display numberformat $mode info fixed {"translate":"ms.mode.2","fallback":"针锋奔逃","color":"#7367F0"}

scoreboard players set $blank1 info 6
scoreboard players display name $blank1 info ""
scoreboard players display numberformat $blank1 info blank

# 第三日，地图标题
scoreboard players set $map info 5
scoreboard players display name $map info [{"translate":"ms.map","fallback":"地图"},{"text":" »"}]

# 第四日，判断地图
execute unless score $map setting matches 1..3 run function base:random {min:"1",max:"3"}
scoreboard players operation $map data = $map setting
execute unless score $map setting matches 1..3 run scoreboard players operation $map data = $random temp2
execute if score $map data matches 1 run scoreboard players display numberformat $map info fixed {"translate":"ms.map.1","fallback":"聚光圣殿","color":"#7367F0"}
execute if score $map data matches 2 run scoreboard players display numberformat $map info fixed {"translate":"ms.map.2","fallback":"镇灵塔楼","color":"#7367F0"}
execute if score $map data matches 3 run scoreboard players display numberformat $map info fixed {"translate":"ms.map.3","fallback":"山间湖谷","color":"#7367F0"}

# 第五日，地图大小
scoreboard players set $size info 4
scoreboard players display name $size info {"translate":"ms.map.size","fallback":"地图大小","color":"gray"}
execute if score $map data matches 1 run scoreboard players display numberformat $size info fixed {"text":"«««","color":"yellow"}
execute if score $map data matches 2 run scoreboard players display numberformat $size info fixed {"text":"««","color":"green"}
execute if score $map data matches 3 run scoreboard players display numberformat $size info fixed {"text":"«««««","color":"red"}

# 第六日，地图复杂度
scoreboard players set $complex info 3
scoreboard players display name $complex info {"translate":"ms.map.complex","fallback":"复杂程度","color":"gray"}
execute if score $map data matches 1 run scoreboard players display numberformat $complex info fixed {"text":"««","color":"green"}
execute if score $map data matches 2 run scoreboard players display numberformat $complex info fixed {"text":"««««","color":"gold"}
execute if score $map data matches 3 run scoreboard players display numberformat $complex info fixed {"text":"«««","color":"yellow"}

scoreboard players set $blank2 info 2
scoreboard players display name $blank2 info ""
scoreboard players display numberformat $blank2 info blank

# 第七日，回响标题
execute if score $echo data matches 1..9 run scoreboard players set $echo info 1
execute if score $echo data matches 1..9 run scoreboard players display name $echo info [{"translate":"ms.echo","fallback":"回响"},{"text":" »"}]

# 然后，在第八日……
execute if score $echo data matches 1 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.1","fallback":"强制性引导","color":"#F75EEB"}
execute if score $echo data matches 2 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.2","fallback":"灵魂鉴碎片","color":"#F75EEB"}
execute if score $echo data matches 3 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.3","fallback":"九次九碎片","color":"#F75EEB"}
execute if score $echo data matches 4 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.4","fallback":"技能全靠盒","color":"#F75EEB"}
execute if score $echo data matches 5 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.5","fallback":"个雷劈落来","color":"#F75EEB"}
execute if score $echo data matches 6 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.6","fallback":"谁家小灵魂","color":"#F75EEB"}
execute if score $echo data matches 7 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.7","fallback":"冲刺冲刺冲","color":"#F75EEB"}
execute if score $echo data matches 8 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.8","fallback":"命运交响曲","color":"#F75EEB"}
execute if score $echo data matches 9 run scoreboard players display numberformat $echo info fixed {"translate":"ms.echo.9","fallback":"破门直接逃","color":"#F75EEB"}