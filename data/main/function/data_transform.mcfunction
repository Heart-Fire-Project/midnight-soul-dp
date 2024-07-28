# 用于玩家更名后的数据转移
$scoreboard players operation $(to) stat_collect += $(from) stat_collect
$scoreboard players operation $(to) stat_heal += $(from) stat_heal
$scoreboard players operation $(to) stat_open += $(from) stat_open
$scoreboard players operation $(to) stat_dying += $(from) stat_dying
$scoreboard players operation $(to) stat_hit += $(from) stat_hit
$scoreboard players operation $(to) stat_down += $(from) stat_down
$scoreboard players operation $(to) stat_skill += $(from) stat_skill
$scoreboard players operation $(to) stat_talent += $(from) stat_talent
$scoreboard players operation $(to) stat_item += $(from) stat_item
$scoreboard players operation $(to) stat_kill += $(from) stat_kill
$scoreboard players operation $(to) stat_death += $(from) stat_death
$scoreboard players operation $(to) stat_finish += $(from) stat_finish
$scoreboard players operation $(to) stat_time += $(from) stat_time
$scoreboard players operation $(to) stat_win += $(from) stat_win
$scoreboard players operation $(to) stat_win_soul += $(from) stat_win_soul
$scoreboard players operation $(to) stat_win_guar += $(from) stat_win_guar
$scoreboard players operation $(to) stat_draw += $(from) stat_draw
$scoreboard players operation $(to) stat_lose += $(from) stat_lose
$scoreboard players operation $(to) stat_play += $(from) stat_play
$scoreboard players operation $(to) stat_play_soul += $(from) stat_play_soul
$scoreboard players operation $(to) stat_play_guar += $(from) stat_play_guar
$scoreboard players operation $(to) stat_mvp += $(from) stat_mvp
$scoreboard players operation $(to) stat_level += $(from) stat_level
$scoreboard players operation $(to) stat_exp += $(from) stat_exp
$scoreboard players operation $(to) stat_adv += $(from) stat_adv
$scoreboard players operation $(to) stat_adv_pt += $(from) stat_adv_pt
$scoreboard players operation $(to) stat_rating = $(from) stat_rating
$scoreboard players operation $(to) stat_record > $(from) stat_record
$scoreboard players operation $(to) stat_rating_record > $(from) stat_rating_record
$scoreboard players operation $(to) stat_parkour_5 < $(from) stat_parkour_5
$scoreboard players operation $(to) stat_parkour_7 < $(from) stat_parkour_7

# 删号
$scoreboard players reset $(from)

# 输出
$tellraw @s [{"text":"» ","bold":true,"color":"#7367F0"},{"translate":"ms.infp.datatran","fallback":"已将 %s 的游戏数据转移至 %s","with":[{"text":"$(from)","color":"#BC78EC"},{"text":"$(to)","color":"#BC78EC"}],"bold":false}]