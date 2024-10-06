setblock -990 -2 -1001 redstone_lamp[lit=true]
tag @s[tag=stat_query] add quering

kill @e[tag=query_entity]

# 名字
summon text_display -985.01 0.7 -1000.5 {Tags:["lobby_entity","query_entity"],text:'["»  ",{"selector":"@p[tag=quering]","color":"white"},"  «"]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.4f,2.4f,2.4f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 级别
scoreboard players operation @s temp = @s[scores={stat_level=..127}] stat_level
scoreboard players set @s[scores={stat_level=..127}] temp2 0
execute as @s[scores={stat_level=..127}] run function main:state/0/exp/maximum
execute if score @s stat_level matches ..127 run summon text_display -985.01 0.47 -1000.5 {Tags:["lobby_entity","query_entity"],text:'["Lv.",{"score":{"name":"@p[tag=quering]","objective":"stat_level"},"color":"#7267F0"},"     ",{"score":{"name":"@p[tag=quering]","objective":"stat_exp"},"color":"#7267F0"},"/",{"score":{"name":"@p[tag=quering]","objective":"exp_max"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_level matches 128.. run summon text_display -985.01 0.47 -1000.5 {Tags:["lobby_entity","query_entity"],text:'["Lv.",{"score":{"name":"@p[tag=quering]","objective":"stat_level"},"color":"#7267F0"},"     ",{"score":{"name":"@p[tag=quering]","objective":"stat_exp"},"color":"#7267F0"},"/-"]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 进度
summon text_display -985.01 0.2 -1000.5 {Tags:["lobby_entity","query_entity"],text:'{"translate":"ms.query.adv","fallback":"已达成 %s 项进度 | 累计 %s 点数","with":[{"score":{"name":"@a[tag=quering]","objective":"stat_adv"},"color":"#7267F0"},{"score":{"name":"@a[tag=quering]","objective":"stat_adv_pt"},"color":"#7267F0"}]}',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 对局
summon text_display -985.01 -0.2 -1003.5 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.mvp","fallback":"全场最佳","color":"yellow"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.5 -1003.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_mvp","name":"@a[tag=quering]"},"color":"yellow"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.2 -1002.5 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.win","fallback":"胜场","color":"gold"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.5 -1002.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_win","name":"@a[tag=quering]"},"color":"gold"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.2 -1001.5 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.draw","fallback":"平局","color":"aqua"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.5 -1001.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_draw","name":"@a[tag=quering]"},"color":"aqua"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.2 -1000.5 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.lose","fallback":"败场","color":"gray"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.5 -1000.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_lose","name":"@a[tag=quering]"},"color":"gray"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.2 -999.5 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.total","fallback":"总场次","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.5 -999.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_play","name":"@a[tag=quering]"},"color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -0.2 -998.5 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.percent","fallback":"胜率","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:caculate/percent {valueA:"@a[tag=quering,limit=1]",valueB:"@a[tag=quering,limit=1]",sourceA:"stat_win",sourceB:"stat_play"}
execute if score $behind temp2 matches 10.. run summon text_display -985.01 -0.5 -998.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$front"},"color":"white"},".",{"score":{"objective":"temp2","name":"$behind"}},"%"]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $behind temp2 matches ..09 run summon text_display -985.01 -0.5 -998.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$front"},"color":"white"},".0",{"score":{"objective":"temp2","name":"$behind"}},"%"]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:caculate/percent {valueA:"@a[tag=quering,limit=1]",valueB:"@a[tag=quering,limit=1]",sourceA:"stat_win_soul",sourceB:"stat_play_soul"}
execute if score $behind temp2 matches 10.. run summon text_display -985.01 -0.38 -997.5 {Tags:["lobby_entity","query_entity"],text:'[{"text":"· ","color":"aqua"},{"score":{"objective":"temp2","name":"$front"}},".",{"score":{"objective":"temp2","name":"$behind"}},"%"]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $behind temp2 matches ..09 run summon text_display -985.01 -0.38 -997.5 {Tags:["lobby_entity","query_entity"],text:'[{"text":"· ","color":"aqua"},{"score":{"objective":"temp2","name":"$front"}},".0",{"score":{"objective":"temp2","name":"$behind"}},"%"]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:caculate/percent {valueA:"@a[tag=quering,limit=1]",valueB:"@a[tag=quering,limit=1]",sourceA:"stat_win_guar",sourceB:"stat_play_guar"}
execute if score $behind temp2 matches 10.. run summon text_display -985.01 -0.65 -997.5 {Tags:["lobby_entity","query_entity"],text:'[{"text":"· ","color":"red"},{"score":{"objective":"temp2","name":"$front"}},".",{"score":{"objective":"temp2","name":"$behind"}},"%"]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $behind temp2 matches ..09 run summon text_display -985.01 -0.65 -997.5 {Tags:["lobby_entity","query_entity"],text:'[{"text":"· ","color":"red"},{"score":{"objective":"temp2","name":"$front"}},".0",{"score":{"objective":"temp2","name":"$behind"}},"%"]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.9f,0.9f,0.9f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 各项分
summon text_display -985.01 -1.16 -1000 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.record","fallback":"最高表现分","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches ..199 run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"] ","color":"#E4E2DD"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#E4E2DD"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches 200..279 run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#E9BCAD"},{"text":"D","color":"#E4BEBC"},{"text":"] ","color":"#E0C0C6"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#E0C0C6"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches 280..379 run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#18D950"},{"text":"C","color":"#3EDD4E"},{"text":"] ","color":"#59E04D"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#59E04D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches 380..499 run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#357FFF"},{"text":"B","color":"#2898FE"},{"text":"] ","color":"#3088FF"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#3088FF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches 500..639 run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#7B57CD"},{"text":"A","color":"#8066E2"},{"text":"] ","color":"#6C5BCE"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#6C5BCE"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches 640..799 run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#FBAB7E"},{"text":"S","color":"#FAB876"},{"text":"] ","color":"#F8C66D"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#F8C66D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches 800..999 run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#FB858A"},{"text":"S","color":"#FB8F81"},{"text":"+","color":"#FC9D76"},{"text":"] ","color":"#FCA86D"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#FCA86D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches 1000..1249 run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#778CF7"},{"text":"E","color":"#7B7DE2"},{"text":"X","color":"#806FCE"},{"text":"] ","color":"#8364BF"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#8364BF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_record matches 1250.. run summon text_display -985.01 -1.2 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#7C67FE"},{"text":"E","color":"#8A57FE"},{"text":"X","color":"#9050FE"},{"text":"+","color":"#A03DFF"},{"text":"] ","color":"#AE2CFF"},{"score":{"name":"@a[tag=quering]","objective":"stat_record"},"color":"#AE2CFF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -1.66 -1000 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.rating.record","fallback":"最高短期分","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches ..2499 run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"] ","color":"#E4E2DD"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#E4E2DD"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches 2500..3199 run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#E9BCAD"},{"text":"D","color":"#E4BEBC"},{"text":"] ","color":"#E0C0C6"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#E0C0C6"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches 3200..3999 run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#18D950"},{"text":"C","color":"#3EDD4E"},{"text":"] ","color":"#59E04D"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#59E04D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches 4000..4999 run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#357FFF"},{"text":"B","color":"#2898FE"},{"text":"] ","color":"#3088FF"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#3088FF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches 5000..5999 run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#7B57CD"},{"text":"A","color":"#8066E2"},{"text":"] ","color":"#6C5BCE"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#6C5BCE"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches 6000..6799 run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#FBAB7E"},{"text":"S","color":"#FAB876"},{"text":"] ","color":"#F8C66D"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#F8C66D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches 6800..7499 run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#FB858A"},{"text":"S","color":"#FB8F81"},{"text":"+","color":"#FC9D76"},{"text":"] ","color":"#FCA86D"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#FCA86D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches 7500..7999 run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#778CF7"},{"text":"E","color":"#7B7DE2"},{"text":"X","color":"#806FCE"},{"text":"] ","color":"#8364BF"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#8364BF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating_record matches 8000.. run summon text_display -985.01 -1.7 -998.0 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#7C67FE"},{"text":"E","color":"#8A57FE"},{"text":"X","color":"#9050FE"},{"text":"+","color":"#A03DFF"},{"text":"] ","color":"#AE2CFF"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating_record"},"color":"#AE2CFF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 -1.3 -1004 {Tags:["lobby_entity","query_entity"],text:'[{"translate":"ms.query.rating","fallback":"短期分","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1.0f,1.0f,1.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[-1f,0f,0f,1f]}}
execute if score @s stat_rating matches ..2499 run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#D0CBC5"},{"text":"F","color":"#DDDBD5"},{"text":"] ","color":"#E4E2DD"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#E4E2DD"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating matches 2500..3199 run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#E9BCAD"},{"text":"D","color":"#E4BEBC"},{"text":"] ","color":"#E0C0C6"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#E0C0C6"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating matches 3200..3999 run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#18D950"},{"text":"C","color":"#3EDD4E"},{"text":"] ","color":"#59E04D"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#59E04D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating matches 4000..4999 run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#357FFF"},{"text":"B","color":"#2898FE"},{"text":"] ","color":"#3088FF"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#3088FF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating matches 5000..5999 run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#7B57CD"},{"text":"A","color":"#8066E2"},{"text":"] ","color":"#6C5BCE"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#6C5BCE"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating matches 6000..6799 run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#FBAB7E"},{"text":"S","color":"#FAB876"},{"text":"] ","color":"#F8C66D"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#F8C66D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating matches 6800..7499 run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#FB858A"},{"text":"S","color":"#FB8F81"},{"text":"+","color":"#FC9D76"},{"text":"] ","color":"#FCA86D"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#FCA86D"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating matches 7500..7999 run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#778CF7"},{"text":"E","color":"#7B7DE2"},{"text":"X","color":"#806FCE"},{"text":"] ","color":"#8364BF"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#8364BF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score @s stat_rating matches 8000.. run summon text_display -985.01 -1.6 -1001.8 {Tags:["lobby_entity","query_entity"],text:'[{"text":"[","color":"#7C67FE"},{"text":"E","color":"#8A57FE"},{"text":"X","color":"#9050FE"},{"text":"+","color":"#A03DFF"},{"text":"] ","color":"#AE2CFF"},{"score":{"name":"@a[tag=quering]","objective":"stat_rating"},"color":"#AE2CFF"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[2.0f,2.0f,2.0f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 详细数据标题
summon item_display -985.01 3.5 -1003.5 {Tags:["lobby_entity","query_entity"],item:{id:"golden_sword"},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 3.45 -1003.3 {Tags:["lobby_entity","query_entity"],item:{id:"skeleton_skull"},billboard:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 2.7 -1003.5 {Tags:["lobby_entity","query_entity"],item:{id:"iron_sword"},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 2.57 -1003.3 {Tags:["lobby_entity","query_entity"],item:{id:"redstone"},billboard:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 1.9 -1003.5 {Tags:["lobby_entity","query_entity"],item:{id:"stone_sword"},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 3.6 -1001.9 {Tags:["lobby_entity","query_entity"],item:{id:"skeleton_skull"},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 2.7 -1001.9 {Tags:["lobby_entity","query_entity"],item:{id:"redstone"},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.1 1.92 -1001.9 {Tags:["lobby_entity","query_entity"],item:{id:"sculk_shrieker"},billboard:"fixed",transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[-0.707f,0f,0f,0.707f],left_rotation:[0f,0.707f,0f,0.707f]}}
summon item_display -985.01 3.5 -1000.3 {Tags:["lobby_entity","query_entity"],item:{id:"echo_shard"},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 2.7 -1000.3 {Tags:["lobby_entity","query_entity"],item:{id:"totem_of_undying",},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 1.9 -1000.3 {Tags:["lobby_entity","query_entity"],item:{id:"light_gray_shulker_box"},billboard:"fixed",transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 3.5 -998.7 {Tags:["lobby_entity","query_entity"],item:{id:"spectral_arrow"},billboard:"fixed",transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 2.7 -998.7 {Tags:["lobby_entity","query_entity"],item:{id:"glow_ink_sac"},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 1.9 -998.7 {Tags:["lobby_entity","query_entity"],item:{id:"iron_chestplate"},billboard:"fixed",transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.03 3.32 -998.6 {Tags:["lobby_entity","query_entity"],text:'[{"text":"S"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.03 2.52 -998.6 {Tags:["lobby_entity","query_entity"],text:'[{"text":"T"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.03 1.72 -998.6 {Tags:["lobby_entity","query_entity"],text:'[{"text":"I"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -985.01 4.27 -1001.4 {Tags:["lobby_entity","query_entity"],item:{id:"clock",},billboard:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 填充数据
summon text_display -985.01 3.4 -1002.7 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_kill","name":"@a[tag=quering]"},"color":"yellow"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 2.6 -1002.7 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_down","name":"@a[tag=quering]"},"color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 1.8 -1002.7 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_hit","name":"@a[tag=quering]"},"color":"gray"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 3.4 -1001.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_death","name":"@a[tag=quering]"},"color":"#C4C4C4"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 2.6 -1001.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_dying","name":"@a[tag=quering]"},"color":"red"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 1.8 -1001.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_revive","name":"@a[tag=quering]"},"color":"green"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 3.4 -999.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_collect","name":"@a[tag=quering]"},"color":"#166849"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 2.6 -999.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_heal","name":"@a[tag=quering]"},"color":"gold"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 1.8 -999.5 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_open","name":"@a[tag=quering]"},"color":"#B4B4B4"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 3.4 -997.9 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_skill","name":"@a[tag=quering]"},"color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 2.6 -997.9 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_talent","name":"@a[tag=quering]"},"color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -985.01 1.8 -997.9 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"stat_item","name":"@a[tag=quering]"},"color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:caculate/time {tick:"@a[tag=quering,limit=1]",source:"stat_time",unit:"day"}
execute if score $hrs temp2 matches 10.. if score $min temp2 matches 10.. if score $sec temp2 matches 10.. run summon text_display -985.03 4.12 -1000.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$day"},"color":"white"},"D ",{"score":{"objective":"temp2","name":"$hrs"}},":",{"score":{"objective":"temp2","name":"$min"}},":",{"score":{"objective":"temp2","name":"$sec"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $hrs temp2 matches ..9 if score $min temp2 matches 10.. if score $sec temp2 matches 10.. run summon text_display -985.03 4.12 -1000.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$day"},"color":"white"},"D 0",{"score":{"objective":"temp2","name":"$hrs"}},":",{"score":{"objective":"temp2","name":"$min"}},":",{"score":{"objective":"temp2","name":"$sec"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $day temp2 matches 10.. if score $min temp2 matches ..9 if score $sec temp2 matches 10.. run summon text_display -985.03 4.12 -1000.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$day"},"color":"white"},"D ",{"score":{"objective":"temp2","name":"$hrs"}},":0",{"score":{"objective":"temp2","name":"$min"}},":",{"score":{"objective":"temp2","name":"$sec"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $hrs temp2 matches 10.. if score $min temp2 matches 10.. if score $sec temp2 matches ..9 run summon text_display -985.03 4.12 -1000.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$day"},"color":"white"},"D ",{"score":{"objective":"temp2","name":"$hrs"}},":",{"score":{"objective":"temp2","name":"$min"}},":0",{"score":{"objective":"temp2","name":"$sec"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $hrs temp2 matches ..9 if score $min temp2 matches ..9 if score $sec temp2 matches 10.. run summon text_display -985.03 4.12 -1000.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$day"},"color":"white"},"D 0",{"score":{"objective":"temp2","name":"$hrs"}},":0",{"score":{"objective":"temp2","name":"$min"}},":",{"score":{"objective":"temp2","name":"$sec"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $hrs temp2 matches ..9 if score $min temp2 matches 10.. if score $sec temp2 matches ..9 run summon text_display -985.03 4.12 -1000.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$day"},"color":"white"},"D 0",{"score":{"objective":"temp2","name":"$hrs"}},":",{"score":{"objective":"temp2","name":"$min"}},":0",{"score":{"objective":"temp2","name":"$sec"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $hrs temp2 matches 10.. if score $min temp2 matches ..9 if score $sec temp2 matches ..9 run summon text_display -985.03 4.12 -1000.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$day"},"color":"white"},"D ",{"score":{"objective":"temp2","name":"$hrs"}},":0",{"score":{"objective":"temp2","name":"$min"}},":0",{"score":{"objective":"temp2","name":"$sec"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
execute if score $hrs temp2 matches ..9 if score $min temp2 matches ..9 if score $sec temp2 matches ..9 run summon text_display -985.03 4.12 -1000.1 {Tags:["lobby_entity","query_entity"],text:'[{"score":{"objective":"temp2","name":"$day"},"color":"white"},"D 0",{"score":{"objective":"temp2","name":"$hrs"}},":0",{"score":{"objective":"temp2","name":"$min"}},":0",{"score":{"objective":"temp2","name":"$sec"}}]',background:0,billboard:"fixed",alignment:"center",line_width:200,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}