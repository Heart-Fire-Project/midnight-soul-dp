tellraw @s [{"text":"-------------- ","color":"#7367F0"},{"translate":"ms.info.end.21","fallback":"个人数据"}," --------------"]

execute unless score @s temp.hit matches -2147483648..2147483647 run scoreboard players set @s temp.hit 0
execute unless score @s temp.down matches -2147483648..2147483647 run scoreboard players set @s temp.down 0
execute unless score @s temp.skill matches -2147483648..2147483647 run scoreboard players set @s temp.skill 0
execute unless score @s temp.open matches -2147483648..2147483647 run scoreboard players set @s temp.open 0
execute unless score @s temp.talent matches -2147483648..2147483647 run scoreboard players set @s temp.talent 0

tellraw @s [{"translate":"ms.info.end.22g","fallback":"有效出击次数","color":"#FCEF01"}," » ",{"score":{"objective":"temp.hit","name":"@s"}}]
tellraw @s [{"translate":"ms.info.end.23g","fallback":"垂死攻击次数","color":"#E47227"}," » ",{"score":{"objective":"temp.hit","name":"@s"}}]
tellraw @s [{"translate":"ms.info.end.24","fallback":"灵魂宝物盒开启数","color":"#CCCCCC"}," » ",{"score":{"objective":"temp.open","name":"@s"}}]
tellraw @s [{"translate":"ms.info.end.26","fallback":"能力触发次数","color":"white"}," » ",{"score":{"objective":"temp.skill","name":"@s"},"color":"red"},"/",{"score":{"objective":"temp.talent","name":"@s"},"color":"gold"}]