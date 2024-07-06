schedule function main:tick/tick20 20t replace

# 管理员退出提示
execute unless score $admin_tip countdown matches ..0 run scoreboard players remove $admin_tip countdown 1
execute if score $admin_tip countdown matches ..0 run tellraw @a[team=admin] [{"text":" » ","bold":true,"color":"light_purple"},{"translate":"ms.info.leave_admin","fallback":"点这里以退出 admin","bold":false,"clickEvent":{"action":"run_command","value":"/trigger interact_check set -999"}}]
execute if score $admin_tip countdown matches ..0 run scoreboard players set $admin_tip countdown 150