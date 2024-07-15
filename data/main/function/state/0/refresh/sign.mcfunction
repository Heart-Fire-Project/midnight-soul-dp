# 公告栏
function base:merge_sign {x:"2",y:"1",z:"3",glow:"1",color:"white",trans_2:"ms.sign.contact",trans_3:"ms.sign.link",fallb_2:"[联系我们]",fallb_3:"> 交流与反馈 <",command:"trigger interact_check set -1"}
function base:merge_sign {x:"1",y:"1",z:"3",glow:"1",color:"orange",trans_2:"ms.sign.major_update",trans_3:"ms.sign.1",fallb_2:"[重大更新]",fallb_3:"2.0 » 大有不同",command:"trigger interact_check set 1"}
function base:merge_sign {x:"0",y:"1",z:"3",glow:"1",color:"light_blue",trans_2:"ms.sign.event",trans_3:"ms.sign.2",fallb_2:"[活动]",fallb_3:"午夜灵魂官方服务器",command:"trigger interact_check set 2"}

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
execute if score $mode setting matches 1 run function base:merge_sign {x:"-8",y:"6",z:"-11",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.mode.1",fallb_2:"01",fallb_3:"灵气碎片",command:"trigger interact_check set 101"}
execute unless score $mode setting matches 1 run function base:merge_sign {x:"-8",y:"6",z:"-11",glow:"1",color:"white",trans_2:"",trans_3:"ms.mode.1",fallb_2:"01",fallb_3:"灵气碎片",command:"trigger interact_check set 201"}
execute if score $mode setting matches 2 run function base:merge_sign {x:"-7",y:"6",z:"-11",glow:"1",color:"cyan",trans_2:"",trans_3:"ms.mode.2",fallb_2:"02",fallb_3:"针锋奔逃",command:"trigger interact_check set 102"}
execute unless score $mode setting matches 2 run function base:merge_sign {x:"-7",y:"6",z:"-11",glow:"1",color:"white",trans_2:"",trans_3:"ms.mode.2",fallb_2:"02",fallb_3:"针锋奔逃",command:"trigger interact_check set 202"}

# 回响概率
data merge block 0 7 3 {front_text:{has_glowing_text:1b,color:"yellow",messages:['""','{"translate":"ms.echo.chance","fallback":"回响触发几率"}','[{"score":{"name":"$echo_chance","objective":"setting"}},"%"]','{"text":""}']},is_waxed:1b}
function base:merge_sign {x:"-1",y:"7",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"",fallb_2:">>>",fallb_3:"+5%",command:"trigger interact_check set 301"}
function base:merge_sign {x:"1",y:"7",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"",fallb_2:"<<<",fallb_3:"-5%",command:"trigger interact_check set 302"}

# 回响禁用
function base:merge_sign {x:"-3",y:"6",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"ms.setting.next",fallb_2:"<<<",fallb_3:"下一页",command:"trigger interact_check set 303"}
function base:merge_sign {x:"-9",y:"6",z:"3",glow:"1",color:"white",trans_2:"",trans_3:"ms.setting.prev",fallb_2:">>>",fallb_3:"上一页",command:"trigger interact_check set 304"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"01":true} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.1",fallb_2:"01",fallb_3:"强制性引导",command:"trigger interact_check set 401"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"01":false} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.1",fallb_2:"01",fallb_3:"强制性引导",command:"trigger interact_check set 401"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"02":true} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.2",fallb_2:"02",fallb_3:"真实与虚伪",command:"trigger interact_check set 402"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"02":false} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.2",fallb_2:"02",fallb_3:"真实与虚伪",command:"trigger interact_check set 402"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"03":true} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.3",fallb_2:"03",fallb_3:"片有九条命",command:"trigger interact_check set 403"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"03":false} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.3",fallb_2:"03",fallb_3:"片有九条命",command:"trigger interact_check set 403"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"04":true} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.4",fallb_2:"04",fallb_3:"血多即血少",command:"trigger interact_check set 404"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"04":false} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.4",fallb_2:"04",fallb_3:"血多即血少",command:"trigger interact_check set 404"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"05":true} run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.5",fallb_2:"05",fallb_3:"天不测风云",command:"trigger interact_check set 405"}
execute if score $echo_page setting matches 1 if data storage ms:echo {"05":false} run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.5",fallb_2:"05",fallb_3:"天不测风云",command:"trigger interact_check set 405"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"06":true} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.6",fallb_2:"06",fallb_3:"随地大小变",command:"trigger interact_check set 406"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"06":false} run function base:merge_sign {x:"-4",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.6",fallb_2:"06",fallb_3:"随地大小变",command:"trigger interact_check set 406"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"07":true} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.7",fallb_2:"07",fallb_3:"更快也更疼",command:"trigger interact_check set 407"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"07":false} run function base:merge_sign {x:"-5",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.7",fallb_2:"07",fallb_3:"更快也更疼",command:"trigger interact_check set 407"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"08":true} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.8",fallb_2:"08",fallb_3:"善意或恶意",command:"trigger interact_check set 408"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"08":false} run function base:merge_sign {x:"-6",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.8",fallb_2:"08",fallb_3:"善意或恶意",command:"trigger interact_check set 408"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"09":true} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"green",trans_2:"",trans_3:"ms.echo.9",fallb_2:"09",fallb_3:"开门仍如旧",command:"trigger interact_check set 409"}
execute if score $echo_page setting matches 2 if data storage ms:echo {"09":false} run function base:merge_sign {x:"-7",y:"6",z:"3",glow:"1",color:"red",trans_2:"",trans_3:"ms.echo.9",fallb_2:"09",fallb_3:"开门仍如旧",command:"trigger interact_check set 409"}
execute if score $echo_page setting matches 2 run function base:merge_sign {x:"-8",y:"6",z:"3",glow:"0",color:"white",trans_2:"",trans_3:"",fallb_2:"",fallb_3:"",command:""}

# 图鉴SS
