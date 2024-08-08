scoreboard players remove $1_process countdown 1

# 1199 | 管理员确认 开始
execute if score $1_process countdown matches 1199 unless entity @a[team=admin] run scoreboard players set $1_process countdown 1079
execute if score $1_process countdown matches 1199 run scoreboard players set $1_single countdown 120
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 color pink
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 max 120
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 style notched_6
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 visible true
execute if score $1_process countdown matches 1199 run bossbar set midsoul:1 players @a[team=!spectator]

# 1199 / 1080 | 管理员确认 中途
execute if score $1_process countdown matches 1080..1199 run function main:state/1/bossbar/admin
execute if score $1_process countdown matches 1080..1199 as @a[team=admin,scores={interact_check=5000},tag=!join_check] run function main:state/1/player_enter/transfer
execute if score $1_process countdown matches 1080..1199 run tag @a[team=admin,scores={interact_check=5001},tag=!join_check] add join_check
execute if score $1_process countdown matches 1140 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 1000000
execute if score $1_process countdown matches 1120 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 1000000
execute if score $1_process countdown matches 1100 run playsound block.note_block.xylophone player @a[team=!spectator] 0 1000000 0 1000000
execute unless entity @a[team=admin,tag=!join_check] if score $1_process countdown matches 1080.. run scoreboard players set $1_process countdown 1080

# 1080 / 1079 | 管理员确认 结束
execute if score $1_process countdown matches 1080 run playsound block.note_block.iron_xylophone player @a[team=!spectator] 0 1000000 0 1000000
execute if score $1_process countdown matches 1079 run bossbar set midsoul:1 players
execute if entity @a[tag=join_check] if score $1_process countdown matches 1079 run scoreboard players operation $1_tick countdown -= $1_single countdown

# 1079 | 异象判定
execute if score $1_process countdown matches 1079 run scoreboard players set $echo data 0
execute if score $1_process countdown matches 1079 run function base:random {max:"100",min:"1"}
execute if score $1_process countdown matches 1079 if score $random temp2 <= $echo_chance setting run function main:state/1/echo

# 1079 | 普通标题
execute if score $1_process countdown matches 1079 run title @a[tag=game_player] times 3 50 4
execute if score $1_process countdown matches 1079 run playsound block.beacon.activate ambient @a[tag=game_player] 0 1000000 0 1000000 1
execute if score $1_process countdown matches 1079 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#7367F0"}

# 1055 / 1021 | 回响标题
execute if score $1_process countdown matches 1055 unless score $echo data matches 0 run title @a[tag=game_player] times 0 20 4
execute if score $1_process countdown matches 1051 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#7367F0"}
execute if score $1_process countdown matches 1050 unless score $echo data matches 0 run playsound event.mob_effect.trial_omen player @a[tag=game_player] 0 1000000 0 1000000 0.8
execute if score $1_process countdown matches 1050 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {"translate":"ms.echo.0","fallback":"回响占位符","color":"#8966EF","obfuscated":true}
execute if score $1_process countdown matches 1050 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#8966EF"}
execute if score $1_process countdown matches 1049 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {"translate":"ms.echo.0","fallback":"回响占位符","color":"#9F64EE","obfuscated":true}
execute if score $1_process countdown matches 1049 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#9F64EE"}
execute if score $1_process countdown matches 1048 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {"translate":"ms.echo.0","fallback":"回响占位符","color":"#B563EE","obfuscated":true}
execute if score $1_process countdown matches 1048 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#B563EE"}
execute if score $1_process countdown matches 1047 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {"translate":"ms.echo.0","fallback":"回响占位符","color":"#CB61ED","obfuscated":true}
execute if score $1_process countdown matches 1047 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#CB61ED"}
execute if score $1_process countdown matches 1046 unless score $echo data matches 0 run title @a[tag=game_player] subtitle {"translate":"ms.echo.0","fallback":"回响占位符","color":"#E160EC","obfuscated":true}
execute if score $1_process countdown matches 1046 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#E160EC"}
execute if score $1_process countdown matches 1045 unless score $echo data matches 0 run function main:state/1/echo_subtitle
execute if score $1_process countdown matches 1045 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#F75EEB"}
execute if score $1_process countdown matches 1029 unless score $echo data matches 0 run title @a[tag=game_player] clear
execute if score $1_process countdown matches 1027 unless score $echo data matches 0 run function main:state/1/echo_subtitle
execute if score $1_process countdown matches 1027 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#F75EEB"}
execute if score $1_process countdown matches 1023 unless score $echo data matches 0 run title @a[tag=game_player] clear
execute if score $1_process countdown matches 1022 unless score $echo data matches 0 run function main:state/1/echo_subtitle
execute if score $1_process countdown matches 1022 unless score $echo data matches 0 run title @a[tag=game_player] title {"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#F75EEB"}
execute if score $1_process countdown matches 1021 unless score $echo data matches 0 run title @a[tag=game_player] clear

# 1025 / 1020 | 本局详情 [包含选择地图]
execute if score $1_process countdown matches 1025 run function main:state/1/game_info
execute if score $1_process countdown matches 1024 run scoreboard objectives setdisplay sidebar info
execute if score $1_process countdown matches 1023 run scoreboard objectives setdisplay sidebar
execute if score $1_process countdown matches 1022 run scoreboard objectives setdisplay sidebar info
execute if score $1_process countdown matches 1021 run scoreboard objectives setdisplay sidebar
execute if score $1_process countdown matches 1020 run scoreboard objectives setdisplay sidebar info

# 1020 | 详情信息
execute if score $1_process countdown matches 1020 unless score $echo data matches 0 as @a run function main:lib/echo

# 1019 | 阵营分配标题
execute if score $1_process countdown matches 1019 run title @a times 3 50 2
execute if score $1_process countdown matches 1019 run title @a subtitle ""
execute if score $1_process countdown matches 1019 run title @a[tag=game_player] title {"translate":"ms.title.1.team","fallback":"你的身份是"}

# 1000 | 玩家序号
execute if score $1_process countdown matches 1000 run scoreboard players reset $player_id temp
execute if score $1_process countdown matches 1000 run scoreboard players reset * player_id
execute if score $1_process countdown matches 1000 run scoreboard players set @a[tag=game_player] player_id 0
execute if score $1_process countdown matches 1000 run function main:state/1/player_id

# 1000 | 阵营分配
execute if score $1_process countdown matches 1000 if score $mode data matches 1 run function main:state/1/team/1
execute if score $1_process countdown matches 1000 if score $mode data matches 2 run function main:state/1/team/2

# 1000 | 阵营小标题
execute if score $1_process countdown matches 1000 run title @a[team=soul] subtitle [{"text":"⚕ ","color":"#52E5E7"},{"translate":"ms.soul","fallback":"灵魂"}," ⚕"]
execute if score $1_process countdown matches 1000 run title @a[team=guardian] subtitle [{"text":"⚕ ","color":"red"},{"translate":"ms.guardian","fallback":"灵魂守卫者"}," ⚕"]
execute if score $1_process countdown matches 1000 run playsound block.trial_spawner.about_to_spawn_item player @a[team=soul] 0 1000000 0 1000000
execute if score $1_process countdown matches 1000 run playsound block.respawn_anchor.set_spawn player @a[team=guardian] 0 1000000 0 1000000

# 980 | 设置阵营 Boss 栏
execute if score $1_process countdown matches 980 run bossbar set midsoul:2 color blue
execute if score $1_process countdown matches 980 run bossbar set midsoul:2 style notched_10
execute if score $1_process countdown matches 980 run bossbar set midsoul:2 value 1010000
execute if score $1_process countdown matches 980 run bossbar set midsoul:2 name [{"text":"⚕ ","color":"#52E5E7"},{"translate":"ms.soul","fallback":"灵魂"}," ⚕ ",{"translate":"ms.soul.desc","fallback":"收集碎片，于月下复活自己","color":"white"}]
execute if score $1_process countdown matches 980 run bossbar set midsoul:2 visible true
execute if score $1_process countdown matches 980 run bossbar set midsoul:2 players @a[team=soul]
execute if score $1_process countdown matches 980 run bossbar set midsoul:3 color red
execute if score $1_process countdown matches 980 run bossbar set midsoul:3 style notched_10
execute if score $1_process countdown matches 980 run bossbar set midsoul:3 value 1010000
execute if score $1_process countdown matches 980 run bossbar set midsoul:3 name [{"text":"⚕ ","color":"red"},{"translate":"ms.guardian","fallback":"灵魂守卫者"}," ⚕ ",{"translate":"ms.guardian.desc","fallback":"阻止灵魂，让他们永困于此","color":"white"}]
execute if score $1_process countdown matches 980 run bossbar set midsoul:3 visible true
execute if score $1_process countdown matches 980 run bossbar set midsoul:3 players @a[team=guardian]

# 979 / 976 | 闪
execute if score $1_process countdown matches 979 run bossbar set midsoul:2 visible false
execute if score $1_process countdown matches 978 run bossbar set midsoul:2 visible true
execute if score $1_process countdown matches 977 run bossbar set midsoul:2 visible false
execute if score $1_process countdown matches 976 run bossbar set midsoul:2 visible true
execute if score $1_process countdown matches 979 run bossbar set midsoul:3 visible false
execute if score $1_process countdown matches 978 run bossbar set midsoul:3 visible true
execute if score $1_process countdown matches 977 run bossbar set midsoul:3 visible false
execute if score $1_process countdown matches 976 run bossbar set midsoul:3 visible true

# 960 | 重设能力组
execute if score $1_process countdown matches 960 run scoreboard players set @a[tag=game_player] skill 0
execute if score $1_process countdown matches 960 run scoreboard players set @a[tag=game_player] talent_1 0
execute if score $1_process countdown matches 960 run scoreboard players set @a[tag=game_player] talent_2 0

# 959 | 能力选择 开始 | 先判定时间系数，以基础的 10 秒乘起来
execute if score $1_process countdown matches 959 run scoreboard players set $ability temp 4
execute if score $1_process countdown matches 959 unless score $ability_apply setting matches 5 run scoreboard players set $ability temp 3
execute if score $1_process countdown matches 959 unless score $ability_apply setting matches 3..5 run scoreboard players set $ability temp 2
execute if score $1_process countdown matches 959 unless score $ability_apply setting matches 1..5 run scoreboard players set $ability temp 0
execute if score $1_process countdown matches 959 run scoreboard players set $1_single countdown 200
execute if score $1_process countdown matches 959 run scoreboard players operation $1_single countdown *= $ability temp
execute if score $1_process countdown matches 959 if score $ability temp matches 0 run scoreboard players set $1_process countdown 159
execute if score $1_process countdown matches 959 store result bossbar midsoul:2 max run scoreboard players get $1_single countdown
execute if score $1_process countdown matches 959 store result bossbar midsoul:3 max run scoreboard players get $1_single countdown
execute if score $1_process countdown matches 959 if score $ability_apply setting matches 1 run data merge storage ms:ability {"0":true,"1":false,"2":false}
execute if score $1_process countdown matches 959 if score $ability_apply setting matches 2 run data merge storage ms:ability {"0":false,"1":true,"2":false}
execute if score $1_process countdown matches 959 if score $ability_apply setting matches 3 run data merge storage ms:ability {"0":false,"1":true,"2":true}
execute if score $1_process countdown matches 959 if score $ability_apply setting matches 4 run data merge storage ms:ability {"0":true,"1":true,"2":false}
execute if score $1_process countdown matches 959 if score $ability_apply setting matches 5 run data merge storage ms:ability {"0":true,"1":true,"2":true}
execute if score $1_process countdown matches 959 as @a[team=soul] run function main:state/1/ability/panel_s
execute if score $1_process countdown matches 959 as @a[team=guardian] run function main:state/1/ability/panel_g
execute if score $1_process countdown matches 959 run playsound music_disc.13 music @a[tag=game_player] 0 1000000 0 100000
execute if score $1_process countdown matches 959 if score $ability temp matches 2 run scoreboard players set $1_process countdown 559
execute if score $1_process countdown matches 959 if score $ability temp matches 3 run scoreboard players set $1_process countdown 759

# 961 / 956 | 过渡性闪几下
execute if score $1_process countdown matches 961 unless score $ability_apply setting matches 0 run bossbar set midsoul:2 visible false
execute if score $1_process countdown matches 960 unless score $ability_apply setting matches 0 run bossbar set midsoul:2 visible true
execute if score $1_process countdown matches 959 run bossbar set midsoul:2 visible false
execute if score $1_process countdown matches 958 run bossbar set midsoul:2 visible true
execute if score $1_process countdown matches 957 run bossbar set midsoul:2 visible false
execute if score $1_process countdown matches 956 run bossbar set midsoul:2 visible true
execute if score $1_process countdown matches 961 unless score $ability_apply setting matches 0 run bossbar set midsoul:3 visible false
execute if score $1_process countdown matches 960 unless score $ability_apply setting matches 0 run bossbar set midsoul:3 visible true
execute if score $1_process countdown matches 959 run bossbar set midsoul:3 visible false
execute if score $1_process countdown matches 958 run bossbar set midsoul:3 visible true
execute if score $1_process countdown matches 957 run bossbar set midsoul:3 visible false
execute if score $1_process countdown matches 956 run bossbar set midsoul:3 visible true

# 959 / 160 | 能力选择 中途
execute if score $1_process countdown matches 160..959 as @a[scores={interact_check=5100..5400},tag=!ability_check,tag=game_player] run function main:state/1/ability/selecting
execute if score $1_process countdown matches 160..959 run function main:state/1/bossbar/selecting
execute if score $1_process countdown matches 260 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 1000000 1
execute if score $1_process countdown matches 240 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 1000000 1
execute if score $1_process countdown matches 220 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 1000000 1
execute if score $1_process countdown matches 200 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 1000000 1
execute if score $1_process countdown matches 180 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 1000000 1
execute if score $1_process countdown matches 160 run playsound block.note_block.bit player @a[tag=game_player] 0 1000000 0 1000000 2

# 160 | 能力选择 结束
execute if score $1_process countdown matches 160 run scoreboard players operation $1_tick countdown -= $1_single countdown

# 159 | 重设 Bossbar
execute if score $1_process countdown matches 159 run bossbar set midsoul:2 value 1010000
execute if score $1_process countdown matches 159 run bossbar set midsoul:2 name [{"text":"⚕ ","color":"#52E5E7"},{"translate":"ms.soul","fallback":"灵魂"}," ⚕ ",{"translate":"ms.soul.desc","fallback":"收集碎片，于月下复活自己","color":"white"}]
execute if score $1_process countdown matches 159 run bossbar set midsoul:3 value 1010000
execute if score $1_process countdown matches 159 run bossbar set midsoul:3 name [{"text":"⚕ ","color":"red"},{"translate":"ms.guardian","fallback":"灵魂守卫者"}," ⚕ ",{"translate":"ms.guardian.desc","fallback":"阻止灵魂，让他们永困于此","color":"white"}]

# 159 / 157 | 过渡性闪烁
execute if score $1_process countdown matches 159 unless score $ability_apply setting matches 0 run bossbar set midsoul:2 visible true
execute if score $1_process countdown matches 158 unless score $ability_apply setting matches 0 run bossbar set midsoul:2 visible false
execute if score $1_process countdown matches 157 unless score $ability_apply setting matches 0 run bossbar set midsoul:2 visible true

# 159 | 进行技能随机
execute if score $1_process countdown matches 159 as @a[tag=game_player] run function main:state/1/ability/random