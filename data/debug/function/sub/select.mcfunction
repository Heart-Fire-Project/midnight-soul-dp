# 需要参数 设置类别[mode/map] 指定数值
$scoreboard players set $$(type) setting $(num)
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign
execute if score $state data matches 0 run function main:state/0/bossbar
$execute if score $state data matches 0 run function main:lib/$(type)
execute if score @s interact_check matches ..-1 run function debug:panel
execute unless score @s interact_check matches ..-1 run playsound ui.button.click player @s 0 1000000 0 1000000