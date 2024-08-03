# 统一设置各个 Bossbar 可见情况

# 旁观者统一
bossbar set midsoul:info players @a[team=spectator]

# 管理确认
execute if score $1_process countdown matches 1081..1200 run bossbar set midsoul:1 players @a[team=!spectator]