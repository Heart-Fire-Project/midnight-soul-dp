# 调整个人设置
# 需要参数：setting(设置项) limit{该值应为最大值 +1}
# 注意超限后回复到的值是 0
$scoreboard players add @s setting.$(setting) 1
$execute if score @s setting.$(setting) matches $(limit).. run scoreboard players set @s setting.$(setting) 0
playsound ui.button.click player @s 0 1000000 0 1000000

# 清除设置项对应的物品，以免影响连续调整
scoreboard players reset $ingame_score temp
scoreboard players reset $interact_hint temp
scoreboard players reset $ability_actionbar temp
scoreboard players reset $detailed_result temp
scoreboard players reset $ingame_tip temp
$scoreboard players set $$(setting) temp 1
execute if score $ingame_score temp matches 1 run clear @s ender_eye[custom_model_data=74010]
execute if score $interact_hint temp matches 1 run clear @s book[custom_model_data=74020]
execute if score $ability_actionbar temp matches 1 run clear @s emerald_block[custom_model_data=74032]
execute if score $ability_actionbar temp matches 1 run clear @s honey_block[custom_model_data=74031]
execute if score $ability_actionbar temp matches 1 run clear @s red_stained_glass[custom_model_data=74030]
execute if score $detailed_result temp matches 1 run clear @s paper[custom_model_data=74040]
execute if score $ingame_tip temp matches 1 run clear @s light[custom_model_data=74050]