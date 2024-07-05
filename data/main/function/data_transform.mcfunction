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
$scoreboard players operation $(to) stat_time += $(from) stat_time
$scoreboard players operation $(to) stat_win += $(from) stat_win
$scoreboard players operation $(to) stat_draw += $(from) stat_draw
$scoreboard players operation $(to) stat_lose += $(from) stat_lose
$scoreboard players operation $(to) stat_play += $(from) stat_play
$scoreboard players operation $(to) stat_mvp += $(from) stat_mvp
$scoreboard players operation $(to) stat_level += $(from) stat_level
$scoreboard players operation $(to) stat_exp += $(from) stat_exp
$scoreboard players operation $(to) stat_adv += $(from) stat_adv
$scoreboard players operation $(to) stat_adv_pt += $(from) stat_adv_pt
$scoreboard players operation $(to) stat_gacha += $(from) stat_gacha
$scoreboard players operation $(to) stat_gacha_rec += $(from) stat_gacha_rec
$scoreboard players operation $(to) stat_gacha_ssr += $(from) stat_gacha_ssr
$scoreboard players operation $(to) stat_record += $(from) stat_record

# 删号
$scoreboard players reset $(from)

# 输出
$tellraw @s [{"text":" » ","bold":true,"color":"#7367F0"},{"translate":"ms.infp.datatran","fallback":"已将 %s 的游戏数据转移至 %s","with":[{"text":"$(from)","color":"#BC78EC"},{"text":"$(to)","color":"#BC78EC"}],"bold":false},"\n "]