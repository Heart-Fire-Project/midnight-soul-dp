# 若守卫者不在
execute if entity @a[team=guardian] if score $3_noguar countdown matches ..599 run title @a[team=!admin] actionbar ""
execute if entity @a[team=guardian] run scoreboard players set $3_noguar countdown 600
execute unless entity @a[team=guardian] run function main:state/3/event/no_guardian

# 若灵魂已死光
execute unless entity @a[team=soul,scores={state=0}] run function main:state/5/enter

# 若收集目标达成
execute store result score $goal temp run data get storage ms:map shard_goal
execute if score $3_process countdown matches ..17999 if score $shard_collect data >= $goal temp run function main:state/4/enter

# 若仅剩一位灵魂，20 秒后进灵气 4
execute if score $alive data matches 1 if score $3_process countdown matches 5..17599 run scoreboard players set $3_process countdown 17599

# 若已经不能再拖
execute if score $3_process countdown matches 19200.. run function main:state/4/enter