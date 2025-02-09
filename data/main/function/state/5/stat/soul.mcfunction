tellraw @s [{"text":"-------------- ","color":"#7367F0"},{"translate":"ms.info.end.21","fallback":"个人数据"}," --------------"]

execute unless score @s temp.collect matches -2147483648..2147483647 run scoreboard players set @s temp.collect 0
execute unless score @s temp.heal matches -2147483648..2147483647 run scoreboard players set @s temp.heal 0
execute unless score @s temp.open matches -2147483648..2147483647 run scoreboard players set @s temp.open 0
execute unless score @s temp.dying matches -2147483648..2147483647 run scoreboard players set @s temp.dying 0
execute unless score @s temp.skill matches -2147483648..2147483647 run scoreboard players set @s temp.skill 0
execute unless score @s temp.talent matches -2147483648..2147483647 run scoreboard players set @s temp.talent 0
execute unless score @s temp.item matches -2147483648..2147483647 run scoreboard players set @s temp.item 0

tellraw @s [{"translate":"ms.info.end.22s","fallback":"个人收集数/收集总数","color":"#50A7D9"}," » ",{"score":{"objective":"temp.collect","name":"@s"}},"/",{"score":{"objective":"data","name":"$shard_collect"}}]
tellraw @s [{"translate":"ms.info.end.23s","fallback":"灵魂之灯点亮数","color":"gold"}," » ",{"score":{"objective":"temp.heal","name":"@s"}}]
tellraw @s [{"translate":"ms.info.end.24","fallback":"灵魂宝物盒开启数","color":"#CCCCCC"}," » ",{"score":{"objective":"temp.open","name":"@s"}}]
tellraw @s [{"translate":"ms.info.end.25s","fallback":"陷入垂死次数","color":"red"}," » ",{"score":{"objective":"temp.dying","name":"@s"}}]
tellraw @s [{"translate":"ms.info.end.26","fallback":"能力触发次数","color":"white"}," » ",{"score":{"objective":"temp.skill","name":"@s"},"color":"#5599FF"},"/",{"score":{"objective":"temp.talent","name":"@s"},"color":"aqua"},"/",{"score":{"objective":"temp.item","name":"@s"},"color":"#33FFAA"}]