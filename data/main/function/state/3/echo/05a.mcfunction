$tag @e[tag=marker_blue,limit=$(num),sort=random] add E05
tellraw @a[team=!admin] [{"translate":"ms.echo.5","fallback":"个雷劈落来","color":"light_purple"},{"text":" ❖ "},{"translate":"ms.echo.coming","fallback":"回响即将触发"}]
playsound block.amethyst_block.resonate player @a[team=!admin] 0 1000000 0 1000000