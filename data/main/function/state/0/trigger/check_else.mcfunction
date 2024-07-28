# 公告类
execute if score @s interact_check matches 1 run scoreboard players set @s temp 1
execute if score @s interact_check matches 2 run scoreboard players set @s temp 2
execute if score @s interact_check matches 3 run scoreboard players set @s temp 3
execute if score @s interact_check matches 1..99 run function main:lib/notice

# 技能类
execute if score @s interact_check matches 1001 run scoreboard players set @s skill 1
execute if score @s interact_check matches 1002 run scoreboard players set @s skill 2
execute if score @s interact_check matches 1003 run scoreboard players set @s skill 3
execute if score @s interact_check matches 1004 run scoreboard players set @s skill 4
execute if score @s interact_check matches 1005 run scoreboard players set @s skill 5
execute if score @s interact_check matches 1001..1099 run function main:lib/skill/soul
execute if score @s interact_check matches 1101 run scoreboard players set @s skill 1
execute if score @s interact_check matches 1102 run scoreboard players set @s skill 2
execute if score @s interact_check matches 1103 run scoreboard players set @s skill 3
execute if score @s interact_check matches 1104 run scoreboard players set @s skill 4
execute if score @s interact_check matches 1105 run scoreboard players set @s skill 5
execute if score @s interact_check matches 1101..1199 run function main:lib/skill/guar

# 天赋类
execute if score @s interact_check matches 2001 run scoreboard players set @s talent_1 1
execute if score @s interact_check matches 2002 run scoreboard players set @s talent_1 2
execute if score @s interact_check matches 2003 run scoreboard players set @s talent_1 3
execute if score @s interact_check matches 2004 run scoreboard players set @s talent_1 4
execute if score @s interact_check matches 2005 run scoreboard players set @s talent_1 5
execute if score @s interact_check matches 2006 run scoreboard players set @s talent_1 6
execute if score @s interact_check matches 2007 run scoreboard players set @s talent_1 7
execute if score @s interact_check matches 2001..2099 run function main:lib/talent/soul {num:"1"}
execute if score @s interact_check matches 2101 run scoreboard players set @s talent_1 1
execute if score @s interact_check matches 2102 run scoreboard players set @s talent_1 2
execute if score @s interact_check matches 2103 run scoreboard players set @s talent_1 3
execute if score @s interact_check matches 2104 run scoreboard players set @s talent_1 4
execute if score @s interact_check matches 2105 run scoreboard players set @s talent_1 5
execute if score @s interact_check matches 2106 run scoreboard players set @s talent_1 6
execute if score @s interact_check matches 2107 run scoreboard players set @s talent_1 7
execute if score @s interact_check matches 2101..2199 run function main:lib/talent/guar {num:"1"}

# 宝物类
execute if score @s interact_check matches 3001 run scoreboard players set @s item 1
execute if score @s interact_check matches 3002 run scoreboard players set @s item 2
execute if score @s interact_check matches 3003 run scoreboard players set @s item 3
execute if score @s interact_check matches 3004 run scoreboard players set @s item 4
execute if score @s interact_check matches 3005 run scoreboard players set @s item 5
execute if score @s interact_check matches 3006 run scoreboard players set @s item 6
execute if score @s interact_check matches 3100 run scoreboard players set @s item -1
execute if score @s interact_check matches 3001..3100 run function main:lib/item

scoreboard players set @s interact_check 0