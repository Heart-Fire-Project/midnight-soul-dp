$function base:modify_setting/next {setting:"$$(type)",limit:"$(limit)"}
execute if score $state data matches 0 run function main:state/0/refresh/sign
$execute if score $state data matches 0 run function debug:sub/info/$(type)
execute at @s run function debug:panel