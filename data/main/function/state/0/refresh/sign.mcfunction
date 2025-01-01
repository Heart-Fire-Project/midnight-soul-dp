# 公告栏
function base:merge_sign {x:"2",y:"1",z:"3",glow:"1",color:"white",trans_2:"ms.sign.contact",trans_3:"ms.sign.1",fallb_2:"[联系我们]",fallb_3:"> 交流与反馈 <",command:"trigger interact_check set 1"}
function base:merge_sign {x:"1",y:"1",z:"3",glow:"1",color:"orange",trans_2:"ms.sign.major_update",trans_3:"ms.sign.2",fallb_2:"[重大更新]",fallb_3:"2.0 💠 风吹璨落时",command:"trigger interact_check set 2"}
function base:merge_sign {x:"0",y:"1",z:"3",glow:"1",color:"light_blue",trans_2:"ms.sign.event",trans_3:"ms.sign.3",fallb_2:"[活动]",fallb_3:"午夜灵魂官方服务器",command:"trigger interact_check set 3"}

# 地图设置
execute if score $map setting matches 0 run function base:merge_sign {x:"-11",y:"6",z:"-8",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.map.0",fallb_2:"00",fallb_3:"随机地图",command:"trigger interact_check set 100"}
execute unless score $map setting matches 0 run function base:merge_sign {x:"-11",y:"6",z:"-8",glow:"1",color:"white",trans_2:"",trans_3:"ms.map.0",fallb_2:"00",fallb_3:"随机地图",command:"trigger interact_check set 100"}
execute if score $map setting matches 1 run function base:merge_sign {x:"-11",y:"6",z:"-7",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.map.1",fallb_2:"01",fallb_3:"聚光圣殿",command:"trigger interact_check set 101"}
execute unless score $map setting matches 1 run function base:merge_sign {x:"-11",y:"6",z:"-7",glow:"1",color:"white",trans_2:"",trans_3:"ms.map.1",fallb_2:"01",fallb_3:"聚光圣殿",command:"trigger interact_check set 101"}
execute if score $map setting matches 2 run function base:merge_sign {x:"-11",y:"6",z:"-6",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.map.2",fallb_2:"02",fallb_3:"镇灵塔楼",command:"trigger interact_check set 102"}
execute unless score $map setting matches 2 run function base:merge_sign {x:"-11",y:"6",z:"-6",glow:"1",color:"white",trans_2:"",trans_3:"ms.map.2",fallb_2:"02",fallb_3:"镇灵塔楼",command:"trigger interact_check set 102"}
execute if score $map setting matches 3 run function base:merge_sign {x:"-11",y:"6",z:"-5",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.map.3",fallb_2:"03",fallb_3:"山间湖谷",command:"trigger interact_check set 103"}
execute unless score $map setting matches 3 run function base:merge_sign {x:"-11",y:"6",z:"-5",glow:"1",color:"white",trans_2:"",trans_3:"ms.map.3",fallb_2:"03",fallb_3:"山间湖谷",command:"trigger interact_check set 103"}

# 模式设置
execute if score $mode setting matches 1 run function base:merge_sign {x:"-8",y:"6",z:"-11",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.mode.1",fallb_2:"01",fallb_3:"灵气碎片",command:"trigger interact_check set 201"}
execute unless score $mode setting matches 1 run function base:merge_sign {x:"-8",y:"6",z:"-11",glow:"1",color:"white",trans_2:"",trans_3:"ms.mode.1",fallb_2:"01",fallb_3:"灵气碎片",command:"trigger interact_check set 201"}
execute if score $mode setting matches 2 run function base:merge_sign {x:"-7",y:"6",z:"-11",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.mode.2",fallb_2:"02",fallb_3:"针锋奔逃",command:"trigger interact_check set 202"}
execute unless score $mode setting matches 2 run function base:merge_sign {x:"-7",y:"6",z:"-11",glow:"1",color:"white",trans_2:"",trans_3:"ms.mode.2",fallb_2:"02",fallb_3:"针锋奔逃",command:"trigger interact_check set 202"}

# 回响概率
data merge block 0 7 3 {front_text:{has_glowing_text:1b,color:"yellow",messages:['""','{"translate":"ms.echo.chance","fallback":"回响触发几率"}','[{"score":{"name":"$echo_chance","objective":"setting"}},"%"]','{"text":""}']},is_waxed:1b}
function base:merge_sign {x:"-1",y:"7",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"",fallb_2:">>>",fallb_3:"+5%",command:"trigger interact_check set 301"}
function base:merge_sign {x:"1",y:"7",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"",fallb_2:"<<<",fallb_3:"-5%",command:"trigger interact_check set 302"}

# 回响禁用
function base:merge_sign {x:"-3",y:"6",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"ms.setting.next",fallb_2:"<<<",fallb_3:"上一页",command:"trigger interact_check set 303"}
function base:merge_sign {x:"-9",y:"6",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"ms.setting.prev",fallb_2:">>>",fallb_3:"下一页",command:"trigger interact_check set 304"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"01":true} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.1",fallb_2:"01",fallb_3:"强制性引导",command:"trigger interact_check set 401"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"01":false} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.1",fallb_2:"01",fallb_3:"强制性引导",command:"trigger interact_check set 401"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"02":true} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.2",fallb_2:"02",fallb_3:"灵魂鉴碎片",command:"trigger interact_check set 402"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"02":false} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.2",fallb_2:"02",fallb_3:"灵魂鉴碎片",command:"trigger interact_check set 402"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"03":true} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.3",fallb_2:"03",fallb_3:"九次九碎片",command:"trigger interact_check set 403"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"03":false} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.3",fallb_2:"03",fallb_3:"九次九碎片",command:"trigger interact_check set 403"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"04":true} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.4",fallb_2:"04",fallb_3:"技能全靠盒",command:"trigger interact_check set 404"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"04":false} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.4",fallb_2:"04",fallb_3:"技能全靠盒",command:"trigger interact_check set 404"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"05":true} run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.5",fallb_2:"05",fallb_3:"个雷劈落来",command:"trigger interact_check set 405"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"05":false} run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.5",fallb_2:"05",fallb_3:"个雷劈落来",command:"trigger interact_check set 405"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"06":true} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.6",fallb_2:"06",fallb_3:"谁家小灵魂",command:"trigger interact_check set 406"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"06":false} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.6",fallb_2:"06",fallb_3:"谁家小灵魂",command:"trigger interact_check set 406"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"07":true} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.7",fallb_2:"07",fallb_3:"冲刺冲刺冲",command:"trigger interact_check set 407"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"07":false} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.7",fallb_2:"07",fallb_3:"冲刺冲刺冲",command:"trigger interact_check set 407"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"08":true} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.8",fallb_2:"08",fallb_3:"命运交响曲",command:"trigger interact_check set 408"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"08":false} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.8",fallb_2:"08",fallb_3:"命运交响曲",command:"trigger interact_check set 408"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"09":true} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.9",fallb_2:"09",fallb_3:"破门直接逃",command:"trigger interact_check set 409"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"09":false} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.9",fallb_2:"09",fallb_3:"破门直接逃",command:"trigger interact_check set 409"}
execute if score $echo_page setting matches 2 run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"0",color:"white",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}

# 能力分配
execute if score $ability_apply setting matches 0 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.ability.0",fallb_2:"◆◇◇◇◇◇",fallb_3:"全部随机",command:"trigger interact_check set 500"}
execute if score $ability_apply setting matches 1 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"green",trans_2:"",trans_3:"ms.ability.1",fallb_2:"◇◆◇◇◇◇",fallb_3:"仅自选技能",command:"trigger interact_check set 500"}
execute if score $ability_apply setting matches 2 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"green",trans_2:"",trans_3:"ms.ability.2",fallb_2:"◇◇◆◇◇◇",fallb_3:"仅自选一天赋",command:"trigger interact_check set 500"}
execute if score $ability_apply setting matches 3 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"green",trans_2:"",trans_3:"ms.ability.3",fallb_2:"◇◇◇◆◇◇",fallb_3:"仅自选双天赋",command:"trigger interact_check set 500"}
execute if score $ability_apply setting matches 4 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"green",trans_2:"",trans_3:"ms.ability.4",fallb_2:"◇◇◇◇◆◇",fallb_3:"自选技能与一天赋",command:"trigger interact_check set 500"}
execute if score $ability_apply setting matches 5 run function base:merge_sign {x:"3",y:"6",z:"1",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.ability.5",fallb_2:"◇◇◇◇◇◆",fallb_3:"全部自选",command:"trigger interact_check set 500"}

# 图鉴SS
function base:merge_sign {x:"-1",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.001",fallb_2:"S001",fallb_3:"幻影迷踪",command:"trigger interact_check set 1001"}
function base:merge_sign {x:"-2",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.002",fallb_2:"S002",fallb_3:"灵灯之筑",command:"trigger interact_check set 1002"}
function base:merge_sign {x:"-3",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.003",fallb_2:"S003",fallb_3:"逆向追踪",command:"trigger interact_check set 1003"}
function base:merge_sign {x:"-4",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.004",fallb_2:"S004",fallb_3:"铤而走险",command:"trigger interact_check set 1004"}
function base:merge_sign {x:"-5",y:"11",z:"3",glow:"1",color:"light_blue",trans_2:"",trans_3:"ms.skill.005",fallb_2:"S005",fallb_3:"锚定虚影",command:"trigger interact_check set 1005"}

# 图鉴GS
function base:merge_sign {x:"3",y:"11",z:"-1",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.101",fallb_2:"S101",fallb_3:"虔诚力场",command:"trigger interact_check set 1101"}
function base:merge_sign {x:"3",y:"11",z:"-2",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.102",fallb_2:"S102",fallb_3:"灵力掌控",command:"trigger interact_check set 1102"}
function base:merge_sign {x:"3",y:"11",z:"-3",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.103",fallb_2:"S103",fallb_3:"唤灵留迹",command:"trigger interact_check set 1103"}
function base:merge_sign {x:"3",y:"11",z:"-4",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.104",fallb_2:"S104",fallb_3:"恶灵诅咒",command:"trigger interact_check set 1104"}
function base:merge_sign {x:"3",y:"11",z:"-5",glow:"1",color:"red",trans_2:"",trans_3:"ms.skill.105",fallb_2:"S105",fallb_3:"雾影阴霾",command:"trigger interact_check set 1105"}

# 图鉴ST
function base:merge_sign {x:"-11",y:"11",z:"-1",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.001",fallb_2:"T001",fallb_3:"全神贯注",command:"trigger interact_check set 2001"}
function base:merge_sign {x:"-11",y:"11",z:"-2",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.002",fallb_2:"T002",fallb_3:"赴汤蹈火",command:"trigger interact_check set 2002"}
function base:merge_sign {x:"-11",y:"11",z:"-3",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.003",fallb_2:"T003",fallb_3:"同生共死",command:"trigger interact_check set 2003"}
function base:merge_sign {x:"-11",y:"11",z:"-4",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.004",fallb_2:"T004",fallb_3:"魂魄汲取",command:"trigger interact_check set 2004"}
function base:merge_sign {x:"-11",y:"11",z:"-5",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.005",fallb_2:"T005",fallb_3:"蹑手蹑脚",command:"trigger interact_check set 2005"}
function base:merge_sign {x:"-11",y:"11",z:"-6",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.006",fallb_2:"T006",fallb_3:"碎片注入",command:"trigger interact_check set 2006"}
function base:merge_sign {x:"-11",y:"11",z:"-7",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.talent.007",fallb_2:"T007",fallb_3:"灵气感知",command:"trigger interact_check set 2007"}

# 图鉴GT
function base:merge_sign {x:"-1",y:"11",z:"-11",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.101",fallb_2:"T101",fallb_3:"抱火寝薪",command:"trigger interact_check set 2101"}
function base:merge_sign {x:"-2",y:"11",z:"-11",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.102",fallb_2:"T102",fallb_3:"火冒三丈",command:"trigger interact_check set 2102"}
function base:merge_sign {x:"-3",y:"11",z:"-11",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.103",fallb_2:"T103",fallb_3:"祛灵十字",command:"trigger interact_check set 2103"}
function base:merge_sign {x:"-4",y:"11",z:"-11",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.104",fallb_2:"T104",fallb_3:"隐于迷雾",command:"trigger interact_check set 2104"}
function base:merge_sign {x:"-5",y:"11",z:"-11",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.105",fallb_2:"T105",fallb_3:"舍近求远",command:"trigger interact_check set 2105"}
function base:merge_sign {x:"-6",y:"11",z:"-11",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.106",fallb_2:"T106",fallb_3:"共振感应",command:"trigger interact_check set 2106"}
function base:merge_sign {x:"-7",y:"11",z:"-11",glow:"1",color:"orange",trans_2:"",trans_3:"ms.talent.107",fallb_2:"T107",fallb_3:"碎片侵蚀",command:"trigger interact_check set 2107"}

# 图鉴I
function base:merge_sign {x:"-7",y:"11",z:"1",glow:"1",color:"lime",trans_2:"",trans_3:"ms.item.01",fallb_2:"I01",fallb_3:"无懈可击",command:"trigger interact_check set 3001"}
function base:merge_sign {x:"-7",y:"11",z:"-2",glow:"1",color:"lime",trans_2:"",trans_3:"ms.item.02",fallb_2:"I02",fallb_3:"共鸣引力",command:"trigger interact_check set 3002"}
function base:merge_sign {x:"-7",y:"11",z:"-5",glow:"1",color:"lime",trans_2:"",trans_3:"ms.item.03",fallb_2:"I03",fallb_3:"无垠时界",command:"trigger interact_check set 3003"}
function base:merge_sign {x:"-5",y:"11",z:"-7",glow:"1",color:"lime",trans_2:"",trans_3:"ms.item.04",fallb_2:"I04",fallb_3:"相位替换",command:"trigger interact_check set 3004"}
function base:merge_sign {x:"-2",y:"11",z:"-7",glow:"1",color:"lime",trans_2:"",trans_3:"ms.item.05",fallb_2:"I05",fallb_3:"高效制冷",command:"trigger interact_check set 3005"}
function base:merge_sign {x:"1",y:"11",z:"-7",glow:"1",color:"lime",trans_2:"",trans_3:"ms.item.06",fallb_2:"I06",fallb_3:"太空体验",command:"trigger interact_check set 3006"}

function base:merge_sign {x:"-8",y:"14",z:"-8",glow:"1",color:"purple",trans_2:"",trans_3:"ms.weapon",fallb_2:"EX",fallb_3:"祛灵刃",command:"trigger interact_check set 3100"}