# 调整个人设置
# 需要参数：setting(设置项) limit{该值应为最大值 +1}
# 注意超限后回复到的值是 0
$scoreboard players add @s setting.$(setting) 1
$execute if score @s setting.$(setting) matches $(limit).. run scoreboard players set @s setting.$(setting) 0
playsound ui.button.click player @s 0 1000000 0 1000000

# 清除设置项对应的物品，以免影响连续调整
scoreboard players reset $echo_info temp
scoreboard players reset $interact_hint temp
scoreboard players reset $ability_actionbar temp
scoreboard players reset $simplified_result temp
scoreboard players reset $ingame_tip temp
$scoreboard players set $$(setting) temp 1
execute if score $echo_info temp matches 1 run clear @s popped_chorus_fruit[custom_data={"id":74010,"type":"setting"}]
execute if score $interact_hint temp matches 1 run clear @s echo_shard[custom_data={"id":74020,"type":"setting"}]
execute if score $ability_actionbar temp matches 1 run clear @s emerald_block[custom_data={"id":74032,"type":"setting"}]
execute if score $ability_actionbar temp matches 1 run clear @s honey_block[custom_data={"id":74031,"type":"setting"}]
execute if score $ability_actionbar temp matches 1 run clear @s red_stained_glass[custom_data={"id":74030,"type":"setting"}]
execute if score $ingame_tip temp matches 1 run clear @s light[custom_data={"id":74040,"type":"setting"}]
execute if score $simplified_result temp matches 1 run clear @s paper[custom_data={"id":74050,"type":"setting"}]