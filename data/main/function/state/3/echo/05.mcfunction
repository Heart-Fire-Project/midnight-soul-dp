tellraw @a[team=!admin] [{"translate":"ms.echo.5","fallback":"个雷劈落来","color":"light_purple"},{"text":" ❖ "},{"translate":"ms.echo.active","fallback":"回响效果触发"}]

# 哇，□□□□，哇这个雷劈过来，差点劈到我啊！
execute at @e[tag=E05] run summon lightning_bolt
tag @e remove E05

# 重设倒计时
function main:state/3/echo/init {min:"20",max:"60"}