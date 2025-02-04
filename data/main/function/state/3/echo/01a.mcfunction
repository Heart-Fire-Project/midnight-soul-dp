# 重置效果后恢复回响影响
effect give @s[tag=echo_target] glowing infinite 0 true
execute if entity @a[tag=echo_target] run effect give @s[tag=!echo_target] resistance infinite 4 true