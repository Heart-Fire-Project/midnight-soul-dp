# 恢复状态
scoreboard players set @s state 0

# 显示标题栏
function base:caculate/time {unit:"min",tick:"@s",source:"parkour_tick"}
execute if score $min temp2 matches 10.. if score $sec temp2 matches 10.. if score $ms temp2 matches 10.. run title @s actionbar [{"translate":"ms.parkour.cancel","fallback":"跑酷已中止","color":"red"}," | ",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches ..9 if score $ms temp2 matches 10.. run title @s actionbar [{"translate":"ms.parkour.cancel","fallback":"跑酷已中止","color":"red"}," | ",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches 10.. if score $ms temp2 matches ..9 run title @s actionbar [{"translate":"ms.parkour.cancel","fallback":"跑酷已中止","color":"red"}," | ",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches 10.. if score $sec temp2 matches ..9 if score $ms temp2 matches ..9 run title @s actionbar [{"translate":"ms.parkour.cancel","fallback":"跑酷已中止","color":"red"}," | ",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches 10.. if score $ms temp2 matches 10.. run title @s actionbar [{"translate":"ms.parkour.cancel","fallback":"跑酷已中止","color":"red"}," | 0",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches ..9 if score $ms temp2 matches 10.. run title @s actionbar [{"translate":"ms.parkour.cancel","fallback":"跑酷已中止","color":"red"}," | 0",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches 10.. if score $ms temp2 matches ..9 run title @s actionbar [{"translate":"ms.parkour.cancel","fallback":"跑酷已中止","color":"red"}," | 0",{"score":{"name":"$min","objective":"temp2"}},":",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]
execute if score $min temp2 matches ..9 if score $sec temp2 matches ..9 if score $ms temp2 matches ..9 run title @s actionbar [{"translate":"ms.parkour.cancel","fallback":"跑酷已中止","color":"red"}," | 0",{"score":{"name":"$min","objective":"temp2"}},":0",{"score":{"name":"$sec","objective":"temp2"}},".0",{"score":{"name":"$ms","objective":"temp2"}}]

# 播放音效
playsound minecraft:block.note_block.bell player @s 0 1000000 0 1000000 0.1