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
item replace entity @s enderchest.10 with netherite_upgrade_smithing_template[custom_name='{"translate":"ms.extra.milestone.-1","fallback":"敬请期待","italic":false}',lore=['{"translate":"ms.extra.milestone.-1.desc","fallback":"仅供测试使用","color":"gray","italic":false}'],hide_additional_tooltip={}] 1

# 塞点例子
execute unless score @s extra_milestone matches 1.. run item replace entity @s enderchest.11 with red_stained_glass_pane[custom_name='{"translate":"ms.extra.milestone.1","fallback":"α","italic":false}',lore=['[{"translate":"ms.extra.milestone.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.extra.milestone.rka","fallback":"· 在至少 %s 局游戏中达到 A 等级","with":["3"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 1
execute if score @s extra_milestone matches 1.. run item replace entity @s enderchest.11 with lime_stained_glass_pane[custom_name='{"translate":"ms.extra.milestone.1","fallback":"α","italic":false}',lore=['[{"translate":"ms.extra.milestone.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]','{"translate":"ms.extra.milestone.1.desc","fallback":"这是一段占位用能力描述","color":"white","italic":false}'],hide_additional_tooltip={}] 1
execute unless score @s extra_milestone matches 2.. run item replace entity @s enderchest.12 with red_stained_glass_pane[custom_name='{"translate":"ms.extra.milestone.2","fallback":"β","italic":false}',lore=['[{"translate":"ms.extra.milestone.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.extra.milestone.mvp","fallback":"· 在至少 %s 局游戏中成为全场最佳","with":["1"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 2
execute if score @s extra_milestone matches 2.. run item replace entity @s enderchest.12 with lime_stained_glass_pane[custom_name='{"translate":"ms.extra.milestone.2","fallback":"β","italic":false}',lore=['[{"translate":"ms.extra.milestone.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]','{"translate":"ms.extra.milestone.2.desc","fallback":"这是一段占位用能力描述","color":"white","italic":false}'],hide_additional_tooltip={}] 2
execute unless score @s extra_milestone matches 3.. run item replace entity @s enderchest.13 with blaze_rod[custom_name='{"translate":"ms.extra.milestone.3","fallback":"散炽棍","italic":false}',lore=['[{"translate":"ms.extra.milestone.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.extra.milestone.rka","fallback":"· 在至少 %s 局游戏中达到 A 等级","with":["5"],"color":"gray","italic":false}','{"translate":"ms.extra.milestone.adv","fallback":"· 达成进度 %s","with":[{"translate":"ms.adv.kill.2","fallback":"祛灵烈斩"}],"color":"gray","italic":false}'],hide_additional_tooltip={}] 3
execute if score @s extra_milestone matches 3.. run item replace entity @s enderchest.13 with blaze_rod[custom_name='{"translate":"ms.extra.weapon.4","fallback":"散炽棍","italic":false}',lore=['[{"translate":"ms.extra.milestone.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]'],enchantment_glint_override=true,hide_additional_tooltip={}] 3
execute unless score @s extra_milestone matches 4.. run item replace entity @s enderchest.14 with red_stained_glass_pane[custom_name='{"translate":"ms.extra.milestone.4","fallback":"γ","italic":false}',lore=['[{"translate":"ms.extra.milestone.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.extra.milestone.rks","fallback":"· 在至少 %s 局游戏中达到 S 等级","with":["1"],"color":"gray","italic":false}','{"translate":"ms.extra.milestone.record","fallback":"· 短期分最高达到过 %s","with":["4500"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 4
execute if score @s extra_milestone matches 4.. run item replace entity @s enderchest.14 with lime_stained_glass_pane[custom_name='{"translate":"ms.extra.milestone.4","fallback":"γ","italic":false}',lore=['[{"translate":"ms.extra.milestone.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]','{"translate":"ms.extra.milestone.4.desc","fallback":"这是一段占位用能力描述","color":"white","italic":false}'],hide_additional_tooltip={}] 4
execute unless score @s extra_milestone matches 5.. run item replace entity @s enderchest.15 with red_stained_glass_pane[custom_name='{"translate":"ms.extra.milestone.5","fallback":"Ω","italic":false}',lore=['[{"translate":"ms.extra.milestone.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.extra.milestone.mvp","fallback":"· 在至少 %s 局游戏中成为全场最佳","with":["5"],"color":"gray","italic":false}','{"translate":"ms.extra.milestone.level","fallback":"· 游戏等级达到 Lv.%s","with":["20"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 5
execute if score @s extra_milestone matches 5.. run item replace entity @s enderchest.15 with lime_stained_glass_pane[custom_name='{"translate":"ms.extra.milestone.5","fallback":"Ω","italic":false}',lore=['[{"translate":"ms.extra.milestone.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]','{"translate":"ms.extra.milestone.4.desc","fallback":"这是一段占位用能力描述","color":"white","italic":false}'],hide_additional_tooltip={}] 5
execute unless score @s extra_milestone matches 6.. run item replace entity @s enderchest.16 with amethyst_cluster[custom_name='{"translate":"ms.extra.headset.3","fallback":"紫水晶皇冠","italic":false}',lore=['[{"translate":"ms.extra.milestone.locked","fallback":"🔒 未解锁","color":"red","italic":false}]','""','{"translate":"ms.extra.milestone.rkex","fallback":"· 在至少 %s 局游戏中达到 EX 等级","with":["1"],"color":"gray","italic":false}','{"translate":"ms.extra.record","fallback":"· 短期分最高达到过 %s","with":["6800"],"color":"gray","italic":false}','{"translate":"ms.extra.time","fallback":"· 累计游玩 %s 以上","with":["90:00"],"color":"gray","italic":false}'],hide_additional_tooltip={}] 6
execute if score @s extra_milestone matches 6.. run item replace entity @s enderchest.16 with amethyst_cluster[custom_name='{"translate":"ms.extra.headset.3","fallback":"紫水晶皇冠","italic":false}',lore=['[{"translate":"ms.extra.milestone.unlock","fallback":"❖ 已解锁","color":"green","italic":false}]'],enchantment_glint_override=true,hide_additional_tooltip={}] 6