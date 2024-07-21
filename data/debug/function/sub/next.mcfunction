$function base:modify_setting/next {setting:"$$(type)",limit:"$(limit)"}
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign
$execute if score $state data matches 0 run function main:lib/$(type)
function debug:panel