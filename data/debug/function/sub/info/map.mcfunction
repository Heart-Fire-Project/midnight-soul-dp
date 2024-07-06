execute if score $map setting matches 0 run tellraw @a [{"text":"\n » ","bold":true,"color":"#7367F0"},{"translate":"ms.map.select","fallback":"选定游戏地图","bold":false}," ",{"translate":"ms.map.0","fallback":"随机地图","bold":false,"color":"aqua"}]
execute if score $map setting matches 0 run tellraw @a [{"text":" » ","bold":true},{"translate":"ms.map.0.desc","fallback":"在现有的所有地图中随机选择一张","bold":false},"\n"]

execute if score $map setting matches 1 run tellraw @a [{"text":"\n » ","bold":true,"color":"#7367F0"},{"translate":"ms.map.select","fallback":"选定游戏地图","bold":false}," ",{"translate":"ms.map.1","fallback":"聚光圣殿","bold":false,"color":"aqua"}]
execute if score $map setting matches 1 run tellraw @a [{"text":" » ","bold":true,"color":"gray"},{"translate":"ms.map.1.desc","fallback":"匿于峡间的小镇，圣殿在此祝福各位","bold":false}]
execute if score $map setting matches 1 run tellraw @a ["     ◈ ",{"translate":"ms.map.size","fallback":"地图大小"},{"text":" | »»»","color":"yellow"},{"text":"»»","color":"white"}]
execute if score $map setting matches 1 run tellraw @a ["     ◈ ",{"translate":"ms.map.complex","fallback":"复杂程度"},{"text":" | »»","color":"green"},{"text":"»»»","color":"white"}]
execute if score $map setting matches 1 run tellraw @a ["     ◈ ",{"translate":"ms.map.source","fallback":"地图来源"}," | WHLDTITAN ",{"text":"[🌐]","clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/48784-kannajouka"},"color":"aqua"}]

execute if score $map setting matches 2 run tellraw @a [{"text":"\n » ","bold":true,"color":"#7367F0"},{"translate":"ms.map.select","fallback":"选定游戏地图","bold":false}," ",{"translate":"ms.map.2","fallback":"镇灵塔楼","bold":false,"color":"aqua"}]
execute if score $map setting matches 2 run tellraw @a [{"text":" » ","bold":true,"color":"gray"},{"translate":"ms.map.2.desc","fallback":"镇压灵魂之所，复生与焚尽，皆在一念之间","bold":false}]
execute if score $map setting matches 2 run tellraw @a ["     ◈ ",{"translate":"ms.map.size","fallback":"地图大小"},{"text":" | »»","color":"green"},{"text":"»»»","color":"white"}]
execute if score $map setting matches 2 run tellraw @a ["     ◈ ",{"translate":"ms.map.complex","fallback":"复杂程度"},{"text":" | »»»»","color":"gold"},{"text":"»","color":"white"}]
execute if score $map setting matches 2 run tellraw @a ["     ◈ ",{"translate":"ms.map.source","fallback":"地图来源"}," | Kapanas & oozner ",{"text":"[🌐]","clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/48643-hide-seek-panda-village"},"color":"aqua"}]

execute if score $map setting matches 3 run tellraw @a [{"text":"\n » ","bold":true,"color":"#7367F0"},{"translate":"ms.map.select","fallback":"选定游戏地图","bold":false}," ",{"translate":"ms.map.3","fallback":"山间湖谷","bold":false,"color":"aqua"}]
execute if score $map setting matches 3 run tellraw @a [{"text":" » ","bold":true,"color":"gray"},{"translate":"ms.map.3.desc","fallback":"平静的湖面波澜不起，本该热闹的村庄却也寂静","bold":false}]
execute if score $map setting matches 3 run tellraw @a ["     ◈ ",{"translate":"ms.map.size","fallback":"地图大小"},{"text":" | »»»»»","color":"red"},{"text":"","color":"white"}]
execute if score $map setting matches 3 run tellraw @a ["     ◈ ",{"translate":"ms.map.complex","fallback":"复杂程度"},{"text":" | »»»","color":"yellow"},{"text":"»»","color":"white"}]
execute if score $map setting matches 3 run tellraw @a ["     ◈ ",{"translate":"ms.map.source","fallback":"地图来源"}," | ZachOBuilds ",{"text":"[🌐]","clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/48285-mountain-lake-village"},"color":"aqua"}]