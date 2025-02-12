# 清掉不需要的格子
item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

# 等现在这堆能力平衡性做好的
item replace entity @s enderchest.10 with netherite_upgrade_smithing_template[custom_name='{"translate":"ms.milestone.-1","fallback":"敬请期待","color":"white","italic":false}',lore=['{"translate":"ms.milestone.-1.desc","fallback":"仅供测试使用","color":"gray","italic":false}'],hide_additional_tooltip={}] 1

# 塞点例子
execute unless score @s extra.milestone matches 1.. run item replace entity @s enderchest.11 with red_stained_glass_pane[custom_name='{"translate":"ms.milestone.1","fallback":"α","italic":false}',lore=['[{"translate":"ms.lore.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.goal.shard","fallback":"· 累计收集 %s 个碎片","with":["20"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 1
execute if score @s extra.milestone matches 1.. run item replace entity @s enderchest.11 with lime_stained_glass_pane[custom_name='{"translate":"ms.milestone.1","fallback":"α","italic":false}',lore=['[{"translate":"ms.lore.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]','{"translate":"ms.milestone.1.desc","fallback":"这是一段占位用能力描述","color":"white","italic":false}'],hide_additional_tooltip={}] 1
execute unless score @s extra.milestone matches 2.. run item replace entity @s enderchest.12 with red_stained_glass_pane[custom_name='{"translate":"ms.milestone.2","fallback":"β","italic":false}',lore=['[{"translate":"ms.lore.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.goal.mvp","fallback":"· 在 %s 场游戏中成为全场最佳","with":["1"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 2
execute if score @s extra.milestone matches 2.. run item replace entity @s enderchest.12 with lime_stained_glass_pane[custom_name='{"translate":"ms.milestone.2","fallback":"β","italic":false}',lore=['[{"translate":"ms.lore.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]','{"translate":"ms.milestone.2.desc","fallback":"这是一段占位用能力描述","color":"white","italic":false}'],hide_additional_tooltip={}] 2
execute unless score @s extra.milestone matches 3.. run item replace entity @s enderchest.13 with blaze_rod[custom_name='{"translate":"ms.weapon.4","fallback":"散炽棍","italic":false}',lore=['[{"translate":"ms.lore.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.goal.down","fallback":"· 累计击倒 %s 次灵魂","with":["5"],"color":"gray","italic":false}','{"translate":"ms.goal.adv","fallback":"· 达成进度 %s","with":[{"translate":"ms.adv.attack.2","fallback":"祛灵烈斩"}],"color":"gray","italic":false}'],hide_additional_tooltip={}] 3
execute if score @s extra.milestone matches 3.. run item replace entity @s enderchest.13 with blaze_rod[custom_name='{"translate":"ms.weapon.4","fallback":"散炽棍","italic":false}',lore=['[{"translate":"ms.lore.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]'],enchantment_glint_override=true,hide_additional_tooltip={}] 3
execute unless score @s extra.milestone matches 4.. run item replace entity @s enderchest.14 with red_stained_glass_pane[custom_name='{"translate":"ms.milestone.4","fallback":"γ","italic":false}',lore=['[{"translate":"ms.lore.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.goal.win","fallback":"· 在 %s 场游戏中取得胜利","with":["7"],"color":"gray","italic":false}','{"translate":"ms.goal.record","fallback":"· 短期分最高达到过 %s","with":["4500"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 4
execute if score @s extra.milestone matches 4.. run item replace entity @s enderchest.14 with lime_stained_glass_pane[custom_name='{"translate":"ms.milestone.4","fallback":"γ","italic":false}',lore=['[{"translate":"ms.lore.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]','{"translate":"ms.milestone.4.desc","fallback":"这是一段占位用能力描述","color":"white","italic":false}'],hide_additional_tooltip={}] 4
execute unless score @s extra.milestone matches 5.. run item replace entity @s enderchest.15 with red_stained_glass_pane[custom_name='{"translate":"ms.milestone.5","fallback":"Ω","italic":false}',lore=['[{"translate":"ms.lore.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.goal.mvp","fallback":"· 在 %s 场游戏中成为全场最佳","with":["5"],"color":"gray","italic":false}','{"translate":"ms.goal.level","fallback":"· 游戏等级达到 Lv.%s","with":["25"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 5
execute if score @s extra.milestone matches 5.. run item replace entity @s enderchest.15 with lime_stained_glass_pane[custom_name='{"translate":"ms.milestone.5","fallback":"Ω","italic":false}',lore=['[{"translate":"ms.lore.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]','{"translate":"ms.milestone.4.desc","fallback":"这是一段占位用能力描述","color":"white","italic":false}'],hide_additional_tooltip={}] 5
execute unless score @s extra.milestone matches 6.. run item replace entity @s enderchest.16 with amethyst_cluster[custom_name='{"translate":"ms.headset.3","fallback":"紫水晶皇冠","italic":false}',lore=['[{"translate":"ms.lore.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.goal.single_rating","fallback":"· 单场表现分纪录达到 %s","with":["700"],"color":"gray","italic":false}','{"translate":"ms.goal.kill","fallback":"· 累计击杀 %s 次灵魂","with":["30"],"color":"gray","italic":false}','{"translate":"ms.goal.time","fallback":"· 累计游玩 %s 以上","with":["90:00"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 6
execute if score @s extra.milestone matches 6.. run item replace entity @s enderchest.16 with amethyst_cluster[custom_name='{"translate":"ms.headset.3","fallback":"紫水晶皇冠","italic":false}',lore=['[{"translate":"ms.lore.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]'],enchantment_glint_override=true,hide_additional_tooltip={}] 6