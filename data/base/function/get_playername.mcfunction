# 获取玩家游戏内名称
# 需要搭配对应战利品表
# 以执行玩家为作用目标，输入作用的物品展示框位置{x/y/z}

loot replace entity @s container.0 loot base:get_playername
$item replace entity @n[type=item_frame,x=$(x),y=$(y),z=$(z)] contents from entity @s container.0
$data modify storage r7s:base playername set string entity @n[type=item_frame,x=$(x),y=$(y),z=$(z)] Item.components."minecraft:profile".name