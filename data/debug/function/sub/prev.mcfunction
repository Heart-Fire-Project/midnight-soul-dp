$function base:modify_setting/prev {setting:"$$(type)",max:"$(max)"}
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign
$execute if score $state data matches 0 run function debug:sub/info/$(type)
function debug:panel