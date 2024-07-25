$function base:modify_setting/binary {storage:"ms:$(storage)",target:"$(target)"}
execute if score $state data matches 0 run function main:state/0/refresh/block
execute if score $state data matches 0 run function main:state/0/refresh/sign
execute if score @s interact_check matches ..-1 run function debug:panel
execute unless score @s interact_check matches ..-1 run playsound ui.button.click player @s 0 1000000 0 1000000

execute if data storage ms:setting {"show_f3":true} run gamerule reducedDebugInfo false
execute if data storage ms:setting {"show_f3":false} run gamerule reducedDebugInfo true
execute if data storage ms:setting {"send_feedback":true} run gamerule sendCommandFeedback true
execute if data storage ms:setting {"send_feedback":false} run gamerule sendCommandFeedback false