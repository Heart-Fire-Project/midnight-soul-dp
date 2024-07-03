# 调整设置至下一项
# 需要参数 设置项 选项上限
$scoreboard players add $(setting) data 1
$execute if score $(setting) data matches $(limit) run scoreboard players set $(setting) data 0