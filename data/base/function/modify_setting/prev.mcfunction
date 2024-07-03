# 调整设置至上一项
# 需要参数 设置项 设置上限
$scoreboard players remove $(setting) data 1
$execute if score $(setting) data matches ..-1 run scoreboard players set $(setting) data $(max)