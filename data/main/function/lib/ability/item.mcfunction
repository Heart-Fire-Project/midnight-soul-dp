execute if score $state data matches 0 run tellraw @s "\n"

tellraw @s[scores={item=1}] [{"translate":"ms.item","fallback":"[宝物] ","color":"#33FFAA"},{"translate":"ms.item.01","fallback":"无懈可击"}]
tellraw @s[scores={item=2}] [{"translate":"ms.item","fallback":"[宝物] ","color":"#33FFAA"},{"translate":"ms.item.02","fallback":"共鸣引力"}]
tellraw @s[scores={item=3}] [{"translate":"ms.item","fallback":"[宝物] ","color":"#33FFAA"},{"translate":"ms.item.03","fallback":"无垠时界"}]
tellraw @s[scores={item=4}] [{"translate":"ms.item","fallback":"[宝物] ","color":"#33FFAA"},{"translate":"ms.item.04","fallback":"相位替换"}]
tellraw @s[scores={item=5}] [{"translate":"ms.item","fallback":"[宝物] ","color":"#33FFAA"},{"translate":"ms.item.05","fallback":"高效制冷"}]
tellraw @s[scores={item=6}] [{"translate":"ms.item","fallback":"[宝物] ","color":"#33FFAA"},{"translate":"ms.item.06","fallback":"太空体验"}]

tellraw @s[scores={item=1}] [{"text":"⌚ 0.8 > ","color":"#33FFAA"},{"translate":"ms.tag.survive","fallback":"生存"}]
tellraw @s[scores={item=2}] [{"text":"> ","color":"#33FFAA"},{"translate":"ms.tag.collect","fallback":"收集"}]
tellraw @s[scores={item=3}] [{"text":"> ","color":"#33FFAA"},{"translate":"ms.tag.strategy","fallback":"策略"}]
tellraw @s[scores={item=4}] [{"text":"> ","color":"#33FFAA"},{"translate":"ms.tag.survive","fallback":"生存","strikethrough":true},"/",{"translate":"ms.tag.debuff","fallback":"妨害","strikethrough":true},"/",{"translate":"ms.tag.strategy","fallback":"策略"}]
tellraw @s[scores={item=5}] [{"text":"> ","color":"#33FFAA"},{"translate":"ms.tag.debuff","fallback":"妨害"}]
tellraw @s[scores={item=6}] [{"text":"⌚ 7 > ","color":"#33FFAA"},{"translate":"ms.tag.survive","fallback":"生存"},"/",{"translate":"ms.tag.collect","fallback":"收集"}]

tellraw @s[scores={item=1}] [{"translate":"ms.item.01.desc","fallback":"宝物生效期间不会受到伤害"}]
tellraw @s[scores={item=2}] [{"translate":"ms.item.02.desc","fallback":"生成一个灵魂碎片，并将半径 15 格内的灵魂碎片聚集至脚下"}]
tellraw @s[scores={item=3}] [{"translate":"ms.item.03.desc","fallback":"即刻减少 30 秒技能冷却"}]
tellraw @s[scores={item=4}] [{"translate":"ms.item.04.desc","fallback":"与最远的灵魂交换位置"}]
tellraw @s[scores={item=5}] [{"translate":"ms.item.05.desc","fallback":"于当前位置与方向放置一个高效制冷模块，守卫者经过时移速 -45%；另一模块被部署或被拆除时模块消失"}]
tellraw @s[scores={item=6}] [{"translate":"ms.item.06.desc","fallback":"生效期间内你将不受重力影响；不会改变初始动量"}]