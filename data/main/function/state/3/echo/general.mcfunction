# 倒计时结束后触发对应效果
execute if score $alive data matches ..2 if score $3_echo countdown matches 0.. run function main:state/3/echo/01f
execute if score $echo data matches 1 if score $3_echo countdown matches 0 run function main:state/3/echo/01