# 重置数据
$scoreboard players reset $(target)
$advancement revoke $(target) everything
$scoreboard players set $(target) leave_game 1

# 设置统计数据
$scoreboard players set $(target) stat_collect 0
$scoreboard players set $(target) stat_heal 0
$scoreboard players set $(target) stat_open 0
$scoreboard players set $(target) stat_dying 0
$scoreboard players set $(target) stat_hit 0
$scoreboard players set $(target) stat_down 0
$scoreboard players set $(target) stat_skill 0
$scoreboard players set $(target) stat_talent 0
$scoreboard players set $(target) stat_item 0
$scoreboard players set $(target) stat_kill 0
$scoreboard players set $(target) stat_time 0
$scoreboard players set $(target) stat_win 0
$scoreboard players set $(target) stat_draw 0
$scoreboard players set $(target) stat_lose 0
$scoreboard players set $(target) stat_play 0
$scoreboard players set $(target) stat_mvp 0
$scoreboard players set $(target) stat_level 0
$scoreboard players set $(target) stat_exp 0
$scoreboard players set $(target) stat_adv 0
$scoreboard players set $(target) stat_adv_pt 0
$scoreboard players set $(target) stat_gacha 0
$scoreboard players set $(target) stat_gacha_rec 0
$scoreboard players set $(target) stat_gacha_ssr 0
$scoreboard players set $(target) stat_record 0

# 数值初始化
$attribute $(target) generic.attack_damage base set 0