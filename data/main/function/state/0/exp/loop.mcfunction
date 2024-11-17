# 确定增减量
execute as @s[scores={exp_temp=1..5}] run data merge storage ms:temp {exp:"1"}
execute as @s[scores={exp_temp=6..10}] run data merge storage ms:temp {exp:"2"}
execute as @s[scores={exp_temp=11..20}] run data merge storage ms:temp {exp:"3"}
execute as @s[scores={exp_temp=21..30}] run data merge storage ms:temp {exp:"4"}
execute as @s[scores={exp_temp=31..70}] run data merge storage ms:temp {exp:"5"}
execute as @s[scores={exp_temp=71..120}] run function base:random {max:"10",min:"3"}
execute as @s[scores={exp_temp=121..500}] run function base:random {max:"40",min:"10"}
execute as @s[scores={exp_temp=501..1000}] run function base:random {max:"70",min:"40"}
execute as @s[scores={exp_temp=1000..}] run function base:random {max:"100",min:"70"}
execute as @s[scores={exp_temp=71..}] store result storage ms:temp exp float 1 run scoreboard players get $random temp2

# 执行运算
execute as @s[scores={exp_temp=1..}] at @s run function main:state/0/exp/operate with storage ms:temp

# 判断是否升级
execute if score @s stat.exp >= @s exp_max at @s[scores={stat.level=..127}] run function main:state/0/exp/levelup

# 显示经验标题栏
title @s[scores={stat.level=..128,countdown=0..,state=0}] actionbar [{"score":{"objective":"exp_temp","name":"@s"}}," + ",{"score":{"objective":"stat.exp","name":"@s"},"color":"aqua"},{"text":"/","color":"#7367F0"},{"score":{"objective":"exp_max","name":"@s"},"color":"#7367F0"}]
title @s[scores={stat.level=128..,countdown=0..,state=0}] actionbar [{"score":{"objective":"exp_temp","name":"@s"}}," + ",{"score":{"objective":"stat.exp","name":"@s"},"color":"aqua"},{"text":"/ -","color":"#7367F0"}]

# 显示升级特效
scoreboard players operation @s temp = @s stat.level
scoreboard players operation @s temp += #-1 data
title @s[scores={countdown=-69,state=0}] actionbar ""
title @s[scores={countdown=-63,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"},"color":"aqua"}," »»»»»»» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-59,state=0}] actionbar ""
title @s[scores={countdown=-55,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"},"color":"aqua"}," »»»»»»» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-51,state=0}] actionbar ""
title @s[scores={countdown=-47,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"},"color":"aqua"}," »»»»»»» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-45,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"},"color":"#58F2FE"},{"text":" »","color":"#58F2FE"},"»»»»»» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-43,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"},"color":"#5AE6FD"},{"text":" »»","color":"#5AE6FD"},"»»»»» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-41,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"},"color":"#5DD9FB"},{"text":" »»»","color":"#5DD9FB"},"»»»» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-39,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"},"color":"#5FCCFA"},{"text":" »»»»","color":"#5FCCFA"},"»»» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-37,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"},"color":"#62C0F9"},{"text":" »»»»»","color":"#62C0F9"},"»» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-35,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »",{"text":"»»»»»","color":"#64B3F8"},"» ",{"score":{"name":"@s","objective":"stat.level"}}]
title @s[scores={countdown=-31,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »»",{"text":"»»»»» ","color":"#67A6F6"},{"score":{"name":"@s","objective":"stat.level"},"color":"#67A6F6"}]
title @s[scores={countdown=-29,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »»»",{"text":"»»»» ","color":"#699AF5"},{"score":{"name":"@s","objective":"stat.level"},"color":"#699AF5"}]
title @s[scores={countdown=-27,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »»»»",{"text":"»»» ","color":"#6C8DF4"},{"score":{"name":"@s","objective":"stat.level"},"color":"#6C8DF4"}]
title @s[scores={countdown=-25,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »»»»»",{"text":"»» ","color":"#6E80F3"},{"score":{"name":"@s","objective":"stat.level"},"color":"#6E80F3"}]
title @s[scores={countdown=-23,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »»»»»»",{"text":"» ","color":"#7174F1"},{"score":{"name":"@s","objective":"stat.level"},"color":"#7174F1"}]
title @s[scores={countdown=-21,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »»»»»»» ",{"score":{"name":"@s","objective":"stat.level"},"color":"#7367F0"}]
title @s[scores={countdown=-17,state=0}] actionbar ""
title @s[scores={countdown=-13,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »»»»»»» ",{"score":{"name":"@s","objective":"stat.level"},"color":"#7367F0"}]
title @s[scores={countdown=-09,state=0}] actionbar ""
title @s[scores={countdown=-05,state=0}] actionbar ["",{"score":{"name":"@s","objective":"temp"}}," »»»»»»» ",{"score":{"name":"@s","objective":"stat.level"},"color":"#7367F0"}]

# 判定下一次间隔
scoreboard players set @s[scores={exp_temp=1..10,countdown=-1..}] countdown 5
scoreboard players set @s[scores={exp_temp=11..20,countdown=-1..4}] countdown 4
scoreboard players set @s[scores={exp_temp=21..30,countdown=-1..3}] countdown 3
scoreboard players set @s[scores={exp_temp=31..70,countdown=-1..2}] countdown 2
scoreboard players set @s[scores={exp_temp=71..,countdown=-1..1}] countdown 1

# 经验栏刷新
function base:set_exp {current:"stat.exp",max:"exp_max",level:"stat.level"}
experience set @s[scores={stat.level=128..}] 993 points