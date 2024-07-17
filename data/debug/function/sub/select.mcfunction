# 需要参数 设置类别[mode/map] 指定数值
$scoreboard players set $$(type) setting $(num)
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign
$execute if score $state data matches 0 run function main:info/$(type)
function debug:panel