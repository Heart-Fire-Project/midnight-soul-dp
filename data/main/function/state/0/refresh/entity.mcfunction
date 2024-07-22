kill @e[tag=lobby_entity]

# 主标题
summon text_display 3.99 2.2 0.5 {Tags:["lobby_entity"],text:'[{"translate":"ms.title","fallback":"午夜 🔯 灵魂","color":"#7367F0"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[2.8f,2.8f,2.8f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 3.99 1.8 0.5 {Tags:["lobby_entity"],text:'[{"translate":"ms.lobby.ver","fallback":"V2.0 » 大有不同","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 路标
summon text_display -6.0 1.3 -6.0 {Tags:["lobby_entity"],text:'[{"translate":"ms.lobby.extra","fallback":"额外区域","color":"dark_gray"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -6.0 1.15 -6.0 {Tags:["lobby_entity"],text:'[{"translate":"ms.lobby.extra_desc","fallback":"获取或装配粒子效果、文本套组等多种装饰品","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9 6.3 -9 {Tags:["lobby_entity"],text:'[{"translate":"ms.lobby.setting","fallback":"游戏设定","color":"#7367F0"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9 6.15 -9 {Tags:["lobby_entity"],text:'[{"translate":"ms.lobby.setting_desc","fallback":"管理员可使用 /function debug:panel 进行设置","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 2 12.3 2 {Tags:["lobby_entity"],text:'[{"translate":"ms.lobby.index","fallback":"能力一览","color":"dark_green"}]',background:-1,billboard:"center",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 2 12.15 2 {Tags:["lobby_entity"],text:'[{"translate":"ms.lobby.index.desc","fallback":"当前游戏内的所有天赋、技能以及灵魂宝物","color":"white"}]',background:0,billboard:"center",alignment:"center",line_width:240,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 墙标
summon text_display 2.5 1.9 3.99 {Tags:["lobby_entity"],text:'[{"translate":"ms.lobby.notice","fallback":"公告栏","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:200,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon text_display -10.99 7.5 -9.2 {Tags:["lobby_entity"],text:'["« ",{"translate":"ms.setting.map","fallback":"游戏地图","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9.2 7.0 -10.99 {Tags:["lobby_entity"],text:'[{"translate":"ms.setting.mode","fallback":"游戏模式","color":"white"}," »"]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -9.2 7.3 3.99 {Tags:["lobby_entity"],text:'["« ",{"translate":"ms.setting.echo_pick","fallback":"回响选配","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon text_display -2.2 8.3 3.99 {Tags:["lobby_entity"],text:'["« ",{"translate":"ms.setting.echo_chance","fallback":"概率调整","color":"white"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon text_display 3.99 13 1.5 {Tags:["lobby_entity"],text:'[{"translate":"ms.guardian","fallback":"灵魂守卫者","color":"red"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 3.99 12.2 1.5 {Tags:["lobby_entity"],text:'[{"text":"« ","color":"red"},{"translate":"ms.skill","fallback":"技能"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[2.4f,2.4f,2.4f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 2.0 13 3.99 {Tags:["lobby_entity"],text:'[{"translate":"ms.soul","fallback":"灵魂","color":"#5599FF"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon text_display 1.5 12.2 3.99 {Tags:["lobby_entity"],text:'[{"translate":"ms.skill","fallback":"技能","color":"#5599FF"},{"text":" »"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[2.4f,2.4f,2.4f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon text_display 1.5 13 -10.99 {Tags:["lobby_entity"],text:'[{"translate":"ms.guardian","fallback":"灵魂守卫者","color":"gold"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display 1.5 12.2 -10.99 {Tags:["lobby_entity"],text:'[{"text":"« ","color":"gold"},{"translate":"ms.talent","fallback":"天赋"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[2.4f,2.4f,2.4f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -10.99 13 2.0 {Tags:["lobby_entity"],text:'[{"translate":"ms.soul","fallback":"灵魂","color":"aqua"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[1.5f,1.5f,1.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -10.99 12.2 1.5 {Tags:["lobby_entity"],text:'[{"translate":"ms.talent","fallback":"天赋","color":"aqua"},{"text":" »"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[2.4f,2.4f,2.4f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display -4.7 11.01 -4.7 {Tags:["lobby_entity"],text:'[{"text":"↙ ","color":"#33FFAA"},{"translate":"ms.item","fallback":"灵魂宝物"},{"text":" ↘"}]',background:0,billboard:"fixed",alignment:"center",line_width:100,interpolation_duration:0,transformation:{scale:[2.4f,2.4f,2.4f],translation:[0f,0f,0f],right_rotation:[-1f,0f,0f,1f],left_rotation:[0f,0.4f,0f,1f]}}

# 图鉴SS
summon item_display -1 12.5 3.99 {Tags:["lobby_entity"],item:{id:"phantom_membrane",components:{custom_model_data:71001}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon item_display -2 12.5 3.99 {Tags:["lobby_entity"],item:{id:"soul_lantern",components:{custom_model_data:71002}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon item_display -3 12.5 3.99 {Tags:["lobby_entity"],item:{id:"recovery_compass",components:{custom_model_data:71003}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon item_display -4 12.5 3.99 {Tags:["lobby_entity"],item:{id:"dragon_breath",components:{custom_model_data:71004}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}
summon item_display -5 12.5 3.99 {Tags:["lobby_entity"],item:{id:"shulker_shell",components:{custom_model_data:71005}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,-1f,0f,1f]}}

# 图鉴GS
summon item_display 3.99 12.5 -1 {Tags:["lobby_entity"],item:{id:"spectral_arrow",components:{custom_model_data:71101}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display 3.99 12.5 -2 {Tags:["lobby_entity"],item:{id:"echo_shard",components:{custom_model_data:71102}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display 3.99 12.5 -3 {Tags:["lobby_entity"],item:{id:"compass",components:{custom_model_data:71103}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display 3.99 12.5 -4 {Tags:["lobby_entity"],item:{id:"ender_chest",components:{custom_model_data:71104}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display 3.99 12.5 -5 {Tags:["lobby_entity"],item:{id:"light_gray_dye",components:{custom_model_data:71105}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 图鉴ST
summon item_display -10.99 12.5 -1 {Tags:["lobby_entity"],item:{id:"glow_ink_sac",components:{custom_model_data:72001}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -10.99 12.5 -2 {Tags:["lobby_entity"],item:{id:"blaze_powder",components:{custom_model_data:72002}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -10.99 12.5 -3 {Tags:["lobby_entity"],item:{id:"magma_cream",components:{custom_model_data:72003}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -10.99 12.5 -4 {Tags:["lobby_entity"],item:{id:"soul_torch",components:{custom_model_data:72004}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -10.99 12.5 -5 {Tags:["lobby_entity"],item:{id:"feather",components:{custom_model_data:72005}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -10.99 12.5 -6 {Tags:["lobby_entity"],item:{id:"echo_shard",components:{custom_model_data:72006}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display -10.99 12.5 -7 {Tags:["lobby_entity"],item:{id:"cyan_dye",components:{custom_model_data:72007}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,-1f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 图鉴GT
summon item_display -1 12.5 -10.99 {Tags:["lobby_entity"],item:{id:"crimson_fungus",components:{custom_model_data:72101}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}
summon item_display -2 12.5 -10.99 {Tags:["lobby_entity"],item:{id:"red_dye",components:{custom_model_data:72102}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}
summon item_display -3 12.5 -10.99 {Tags:["lobby_entity"],item:{id:"book",components:{custom_model_data:72103}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}
summon item_display -4 12.5 -10.99 {Tags:["lobby_entity"],item:{id:"black_candle",components:{custom_model_data:72104}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}
summon item_display -5 12.5 -10.99 {Tags:["lobby_entity"],item:{id:"recovery_compass",components:{custom_model_data:72105}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}
summon item_display -6 12.5 -10.99 {Tags:["lobby_entity"],item:{id:"redstone",components:{custom_model_data:72106}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}
summon item_display -7 12.5 -10.99 {Tags:["lobby_entity"],item:{id:"amethyst_shard",components:{custom_model_data:72107}},billboard:"fixed",interpolation_duration:0,transformation:{scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f],right_rotation:[0f,1f,0f,1f],left_rotation:[0f,1f,0f,1f]}}

# 图鉴I
summon item -8 12.1 1 {Tags:[lobby_entity],Item:{id:"iron_chestplate",components:{custom_model_data:73001,trim:{material:amethyst,pattern:spire}}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item -8 12.1 -2 {Tags:[lobby_entity],Item:{id:"prismarine_shard",components:{custom_model_data:73002}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item -8 12.1 -5 {Tags:[lobby_entity],Item:{id:"clock",components:{custom_model_data:73003}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item -5 12.1 -8 {Tags:[lobby_entity],Item:{id:"shaper_armor_trim_smithing_template",components:{custom_model_data:73004}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item -2 12.1 -8 {Tags:[lobby_entity],Item:{id:"player_head",components:{custom_model_data:73005,profile:{id:[I;-2028710611,-535870698,-1464817086,-1561423040],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk4Njc5NDUyMTg2OWU4MzI3ZWY4MWRiYzM1Yzk4NTZiYzQwNTFkZjk4ODhkODFlYWIyMTI0NDJiMTc2YTgyZiJ9fX0="}]}}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}
summon item 1 12.1 -8 {Tags:[lobby_entity],Item:{id:"quartz",components:{custom_model_data:73006}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}

summon item -8 12.1 -8 {Tags:[lobby_entity],Item:{id:"golden_sword",components:{enchantments:{mending:1}}},PickupDelay:32767s,Age:-32768s,NoGravity:1b}

# 跑酷区的和平鸽
execute unless entity @e[tag=parkour_entity] run summon skeleton 8 22 25 {CustomName:'"P1ge0nGG"',ArmorItems:[{id:leather_boots},{id:netherite_leggings},{id:golden_chestplate},{id:player_head,components:{profile:P1ge0nGG}}],HandItems:[{id:bow,components:{enchantments:{punch:2}}},{}],LeftHanded:false,Invulnerable:true,PersistenceRequired:true,Tags:[parkour_entity]}