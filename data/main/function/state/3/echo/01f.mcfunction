tellraw @a[team=!admin] [{"translate":"ms.echo.1","fallback":"强制性引导","color":"light_purple"},{"text":" ❖ "},{"translate":"ms.echo.invaild","fallback":"回响效果已失效"}]
playsound block.respawn_anchor.deplete player @a[team=!admin] 0 1000000 0 1000000
scoreboard players set $3_echo countdown -1

# 取消所有标记
effect clear @a[tag=echo_target] glowing
effect clear @a[tag=!echo_target] resistance
tag @a remove echo_target