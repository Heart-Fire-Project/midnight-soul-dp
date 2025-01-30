# 通过令玩家获取自己的头颅后，解析头颅数据获取玩家用户名
# 前置条件：loot_table/get_playername
# 需要参数：x y z (需要一个可以暂存头颅的位于常加载区块的物品展示框)
# 输出结果：r7s:base{playername}
loot replace entity @s container.0 loot base:get_playername
$item replace entity @n[type=item_frame,x=$(x),y=$(y),z=$(z)] contents from entity @s container.0
$data modify storage r7s:base playername set string entity @n[type=item_frame,x=$(x),y=$(y),z=$(z)] Item.components."minecraft:profile".name