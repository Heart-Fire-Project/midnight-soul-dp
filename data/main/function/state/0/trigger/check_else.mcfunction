# 公告类
execute if score @s interact_check matches 1 run scoreboard players set @s temp 1
execute if score @s interact_check matches 2 run scoreboard players set @s temp 2
execute if score @s interact_check matches 3 run scoreboard players set @s temp 3
execute if score @s interact_check matches 1..99 run function main:lib/notice

# 图鉴类型
execute if score @s interact_check matches 601 run function debug:sub/select {type:"index_type",num:"1"}
execute if score @s interact_check matches 602 run function debug:sub/select {type:"index_type",num:"2"}
execute if score @s interact_check matches 603 run function debug:sub/select {type:"index_type",num:"3"}
execute if score @s interact_check matches 604 run function debug:sub/select {type:"index_type",num:"4"}
execute if score @s interact_check matches 605 run function debug:sub/select {type:"index_type",num:"5"}
execute if score @s interact_check matches 601..605 run function main:state/0/refresh/index

# 鸣谢类
execute if score @s interact_check matches 901 run scoreboard players set @s temp 1
execute if score @s interact_check matches 902 run scoreboard players set @s temp 2
execute if score @s interact_check matches 903 run scoreboard players set @s temp 3
execute if score @s interact_check matches 904 run scoreboard players set @s temp 4
execute if score @s interact_check matches 905 run scoreboard players set @s temp 5
execute if score @s interact_check matches 906 run scoreboard players set @s temp 6
execute if score @s interact_check matches 901..906 run function main:lib/credit

# 技能类
execute if score @s interact_check matches 1001 run scoreboard players set @s skill 1
execute if score @s interact_check matches 1002 run scoreboard players set @s skill 2
execute if score @s interact_check matches 1003 run scoreboard players set @s skill 3
execute if score @s interact_check matches 1004 run scoreboard players set @s skill 4
execute if score @s interact_check matches 1005 run scoreboard players set @s skill 5
execute if score @s interact_check matches 1001..1099 run function main:lib/ability/skill/soul
execute if score @s interact_check matches 1101 run scoreboard players set @s skill 1
execute if score @s interact_check matches 1102 run scoreboard players set @s skill 2
execute if score @s interact_check matches 1103 run scoreboard players set @s skill 3
execute if score @s interact_check matches 1104 run scoreboard players set @s skill 4
execute if score @s interact_check matches 1105 run scoreboard players set @s skill 5
execute if score @s interact_check matches 1101..1199 run function main:lib/ability/skill/guar

# 天赋类
execute if score @s interact_check matches 2001 run scoreboard players set @s talent_1 1
execute if score @s interact_check matches 2002 run scoreboard players set @s talent_1 2
execute if score @s interact_check matches 2003 run scoreboard players set @s talent_1 3
execute if score @s interact_check matches 2004 run scoreboard players set @s talent_1 4
execute if score @s interact_check matches 2005 run scoreboard players set @s talent_1 5
execute if score @s interact_check matches 2006 run scoreboard players set @s talent_1 6
execute if score @s interact_check matches 2007 run scoreboard players set @s talent_1 7
execute if score @s interact_check matches 2001..2099 run function main:lib/ability/talent/soul {num:"1"}
execute if score @s interact_check matches 2101 run scoreboard players set @s talent_1 1
execute if score @s interact_check matches 2102 run scoreboard players set @s talent_1 2
execute if score @s interact_check matches 2103 run scoreboard players set @s talent_1 3
execute if score @s interact_check matches 2104 run scoreboard players set @s talent_1 4
execute if score @s interact_check matches 2105 run scoreboard players set @s talent_1 5
execute if score @s interact_check matches 2106 run scoreboard players set @s talent_1 6
execute if score @s interact_check matches 2107 run scoreboard players set @s talent_1 7
execute if score @s interact_check matches 2101..2199 run function main:lib/ability/talent/guar {num:"1"}

# 宝物类
execute if score @s interact_check matches 3001 run scoreboard players set @s item 1
execute if score @s interact_check matches 3002 run scoreboard players set @s item 2
execute if score @s interact_check matches 3003 run scoreboard players set @s item 3
execute if score @s interact_check matches 3004 run scoreboard players set @s item 4
execute if score @s interact_check matches 3005 run scoreboard players set @s item 5
execute if score @s interact_check matches 3006 run scoreboard players set @s item 6
execute if score @s interact_check matches 3100 run scoreboard players set @s item -1
execute if score @s interact_check matches 3001..3100 run function main:lib/ability/item

execute if score @s interact_check matches 1001..3999 run playsound item.book.page_turn block @s ~ ~ ~

# 粒子效果
execute if score @s interact_check matches 4100 run scoreboard players set @s temp 0
execute if score @s interact_check matches 4101 run scoreboard players set @s temp 1
execute if score @s interact_check matches 4102 run scoreboard players set @s temp 2
execute if score @s interact_check matches 4103 run scoreboard players set @s temp 3
execute if score @s interact_check matches 4104 run scoreboard players set @s temp 4
execute if score @s interact_check matches 4105 run scoreboard players set @s temp 5
execute if score @s interact_check matches 4106 run scoreboard players set @s temp 6
execute if score @s interact_check matches 4107 run scoreboard players set @s temp 7
execute if score @s interact_check matches 4108 run scoreboard players set @s temp 8
execute if score @s interact_check matches 4109 run scoreboard players set @s temp 9
execute if score @s interact_check matches 4100..4199 run function main:state/0/extra/particle

# 武器样式
execute if score @s interact_check matches 4200 run scoreboard players set @s temp 0
execute if score @s interact_check matches 4201 run scoreboard players set @s temp 1
execute if score @s interact_check matches 4202 run scoreboard players set @s temp 2
execute if score @s interact_check matches 4203 run scoreboard players set @s temp 3
execute if score @s interact_check matches 4204 run scoreboard players set @s temp 4
execute if score @s interact_check matches 4200..4299 run function main:state/0/extra/weapon

# 饰品装配
execute if score @s interact_check matches 4300 run scoreboard players set @s temp 0
execute if score @s interact_check matches 4301 run scoreboard players set @s temp 1
execute if score @s interact_check matches 4302 run scoreboard players set @s temp 2
execute if score @s interact_check matches 4303 run scoreboard players set @s temp 3
execute if score @s interact_check matches 4300..4399 run function main:state/0/extra/headset

# 文本套组
execute if score @s interact_check matches 4400 run scoreboard players set @s temp 0
execute if score @s interact_check matches 4401 run scoreboard players set @s temp 1
execute if score @s interact_check matches 4402 run scoreboard players set @s temp 2
execute if score @s interact_check matches 4400..4499 run function main:state/0/extra/text

scoreboard players set @s interact_check 0