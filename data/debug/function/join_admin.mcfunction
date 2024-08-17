# 加入 admin | 创造模式额外取消玩家身份
team join admin @s[team=!admin]
tag @s[gamemode=creative] remove game_player
tellraw @s[team=admin] [{"text":"» ","bold":true,"color":"light_purple"},{"translate":"ms.info.leave_admin","fallback":"点这里以退出 admin","bold":false,"clickEvent":{"action":"run_command","value":"/trigger interact_check set -999"}}]
title @s[team=!admin] actionbar [{"text":"💠 ","color":"light_purple"},{"translate":"ms.info.join_admin","fallback":"你已自动进入 admin"}," 💠"]