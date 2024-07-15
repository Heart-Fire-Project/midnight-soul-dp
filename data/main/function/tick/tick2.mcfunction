schedule function main:tick/tick2 2t replace

execute if score $state data matches 0 run function main:state/0/tick2
function debug:tick2