# 根据所给信息生成标记用作随机目标选择
# 需要参数：score(所设置的分数) tag(用作调用函数中的后续统一清除)
$summon marker 0 -64 0 {Tags:["r7s_temp","$(tag)"]}
$scoreboard players set @e[tag=r7s_temp] temp $(score)
$tag @e[tag=$(tag)] remove r7s_temp