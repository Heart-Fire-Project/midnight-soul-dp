kill @e[tag=extra_entity]
kill @e[tag=query_entity]

# 俩路标
summon text_display -994 -0.7 -1013 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.main","fallback":"返回主大厅","color":"gold"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -994 -0.85 -1013 {Tags:["extra_entity"],text:'[{"translate":"ms.lobby.main_desc","fallback":"前方左转，然后马上右转","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -992 -0.7 -1001 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.query","fallback":"数据查询","color":"dark_purple"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -992 -0.85 -1001 {Tags:["extra_entity"],text:'[{"translate":"ms.lobby.query_desc","fallback":"今天，你掉分了吗？","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 粒子效果
summon text_display -991 -0.7 -1006 {Tags:["extra_entity"],text:'[{"translate":"ms.extra.particle","fallback":"粒子效果","color":"blue"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -991 -0.85 -1006 {Tags:["extra_entity"],text:'[{"translate":"ms.lobby.particle_desc","fallback":"放心，你的粒子效果仅队友可见","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
function base:merge_sign {x:"-991",y:"0",z:"-1011",glow:"1",color:"light_gray",trans_2:"",trans_3:"ms.particle.0",fallb_2:"0",fallb_3:"无粒子效果",command:"trigger interact_check set 3100"}
function base:merge_sign {x:"-990",y:"0",z:"-1011",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.1",fallb_2:"10",fallb_3:"午夜繁星",command:"trigger interact_check set 3101"}
function base:merge_sign {x:"-989",y:"0",z:"-1011",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.2",fallb_2:"25",fallb_3:"氤氲灵气",command:"trigger interact_check set 3102"}
function base:merge_sign {x:"-988",y:"0",z:"-1011",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.3",fallb_2:"40",fallb_3:"凝结冰痕",command:"trigger interact_check set 3103"}
function base:merge_sign {x:"-987",y:"0",z:"-1011",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.4",fallb_2:"55",fallb_3:"点灯施援",command:"trigger interact_check set 3104"}
function base:merge_sign {x:"-987",y:"0",z:"-1010",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.5",fallb_2:"70",fallb_3:"灵迹随踪",command:"trigger interact_check set 3105"}
function base:merge_sign {x:"-987",y:"0",z:"-1009",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.6",fallb_2:"85",fallb_3:"万象环身",command:"trigger interact_check set 3106"}
function base:merge_sign {x:"-987",y:"0",z:"-1008",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.7",fallb_2:"100",fallb_3:"绚彩粉墨",command:"trigger interact_check set 3107"}
function base:merge_sign {x:"-987",y:"0",z:"-1007",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.8",fallb_2:"114",fallb_3:"桃起樱落",command:"trigger interact_check set 3108"}
function base:merge_sign {x:"-987",y:"0",z:"-1006",glow:"1",color:"white",trans_2:"",trans_3:"ms.particle.9",fallb_2:"128",fallb_3:"焰火不熄",command:"trigger interact_check set 3109"}
summon marker -990 -1 -1012 {Tags:["extra_entity","particle_1"]}
summon marker -989 -1 -1012 {Tags:["extra_entity","particle_2"]}
summon marker -988 -1 -1012 {Tags:["extra_entity","particle_3"]}
summon marker -986 -1 -1011 {Tags:["extra_entity","particle_4"]}
summon marker -986 -1 -1010 {Tags:["extra_entity","particle_5"]}
summon marker -986 -1 -1009 {Tags:["extra_entity","particle_6"]}
summon marker -986 -1 -1008 {Tags:["extra_entity","particle_7"]}
summon marker -986 -1 -1007 {Tags:["extra_entity","particle_8"]}
summon marker -986 -1 -1006 {Tags:["extra_entity","particle_9"]}