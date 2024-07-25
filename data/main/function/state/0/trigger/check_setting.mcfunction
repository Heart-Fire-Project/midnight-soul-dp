# 地图
execute if score @s interact_check matches 100 run function debug:sub/select {type:"map",num:"0"}
execute if score @s interact_check matches 101 run function debug:sub/select {type:"map",num:"1"}
execute if score @s interact_check matches 102 run function debug:sub/select {type:"map",num:"2"}
execute if score @s interact_check matches 103 run function debug:sub/select {type:"map",num:"3"}

# 模式
execute if score @s interact_check matches 201 run function debug:sub/select {type:"mode",num:"1"}
execute if score @s interact_check matches 202 run function debug:sub/select {type:"mode",num:"2"}

# 回响概率
execute if score @s interact_check matches 301 run function debug:sub/chance_add {type:"echo"}
execute if score @s interact_check matches 302 run function debug:sub/chance_minus {type:"echo"}

# 回响选配
execute if score @s interact_check matches 303 run function debug:sub/prev {type:"echo_page",max:"1"}
execute if score @s interact_check matches 304 run function debug:sub/next {type:"echo_page",limit:"3"}
execute if score @s interact_check matches 401 run function debug:sub/binary {storage:"echo",target:"01"}
execute if score @s interact_check matches 402 run function debug:sub/binary {storage:"echo",target:"02"}
execute if score @s interact_check matches 403 run function debug:sub/binary {storage:"echo",target:"03"}
execute if score @s interact_check matches 404 run function debug:sub/binary {storage:"echo",target:"04"}
execute if score @s interact_check matches 405 run function debug:sub/binary {storage:"echo",target:"05"}
execute if score @s interact_check matches 406 run function debug:sub/binary {storage:"echo",target:"06"}
execute if score @s interact_check matches 407 run function debug:sub/binary {storage:"echo",target:"07"}
execute if score @s interact_check matches 408 run function debug:sub/binary {storage:"echo",target:"08"}
execute if score @s interact_check matches 409 run function debug:sub/binary {storage:"echo",target:"09"}

# 能力分配方式
execute if score @s interact_check matches 500 run function debug:sub/next {type:"ability_apply",limit:"6"}