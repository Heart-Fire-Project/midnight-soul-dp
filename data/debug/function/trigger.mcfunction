execute if score @s interact_check matches -101 run function debug:sub/select {type:"mode",num:"1"}
execute if score @s interact_check matches -102 run function debug:sub/select {type:"mode",num:"2"}

execute if score @s interact_check matches -200 run function debug:sub/select {type:"map",num:"0"}
execute if score @s interact_check matches -201 run function debug:sub/select {type:"map",num:"1"}
execute if score @s interact_check matches -202 run function debug:sub/select {type:"map",num:"2"}
execute if score @s interact_check matches -203 run function debug:sub/select {type:"map",num:"3"}
execute if score @s interact_check matches -299 run function debug:sub/map_tp

execute if score @s interact_check matches -300 run function debug:sub/mark/show
execute if score @s interact_check matches -301 run function debug:sub/mark/give {type:"blue",colorid:"11"}
execute if score @s interact_check matches -302 run function debug:sub/mark/give {type:"purple",colorid:"2"}
execute if score @s interact_check matches -303 run function debug:sub/mark/give {type:"gold",colorid:"1"}
execute if score @s interact_check matches -304 run function debug:sub/mark/give {type:"gray",colorid:"8"}
execute if score @s interact_check matches -305 run function debug:sub/mark/give {type:"red",colorid:"14"}
execute if score @s interact_check matches -306 run function debug:sub/mark/give {type:"lock",colorid:"0"}
execute if score @s interact_check matches -399 run function debug:sub/mark/count

execute if score @s interact_check matches -400 run function debug:sub/restore
execute if score @s interact_check matches -401 run function debug:sub/next {type:"$ability_apply",limit:"5"}
execute if score @s interact_check matches -411 run function debug:sub/speed_minus {type:"collect"}
execute if score @s interact_check matches -412 run function debug:sub/speed_add {type:"collect"}
execute if score @s interact_check matches -421 run function debug:sub/speed_minus {type:"cooldown"}
execute if score @s interact_check matches -422 run function debug:sub/speed_add {type:"cooldown"}
execute if score @s interact_check matches -431 run function debug:sub/chance_minus {type:"echo"}
execute if score @s interact_check matches -432 run function debug:sub/chance_add {type:"echo"}

execute if score @s interact_check matches -500 run function debug:sub/init_confirm
execute if score @s interact_check matches -501 run function debug:sub/state1
execute if score @s interact_check matches -502 run function debug:sub/state5
execute if score @s interact_check matches -503 run function debug:sub/settinglock
execute if score @s interact_check matches -504 run function debug:sub/gamelock
execute if score @s interact_check matches -505 run function debug:sub/ingamescore
execute if score @s interact_check matches -506 run function debug:sub/showf3
execute if score @s interact_check matches -507 run function debug:sub/showfeedback
execute if score @s interact_check matches -599 run function main:init