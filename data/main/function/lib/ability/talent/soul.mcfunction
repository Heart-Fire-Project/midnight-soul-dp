execute if score $state data matches 0 run tellraw @s "\n"

$tellraw @s[scores={talent_$(num)=1}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"aqua"},{"translate":"ms.talent.001","fallback":"全神贯注"}]
$tellraw @s[scores={talent_$(num)=2}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"aqua"},{"translate":"ms.talent.002","fallback":"赴汤蹈火"}]
$tellraw @s[scores={talent_$(num)=3}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"aqua"},{"translate":"ms.talent.003","fallback":"同生共死"}]
$tellraw @s[scores={talent_$(num)=4}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"aqua"},{"translate":"ms.talent.004","fallback":"魂魄汲取"}]
$tellraw @s[scores={talent_$(num)=5}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"aqua"},{"translate":"ms.talent.005","fallback":"蹑手蹑脚"}]
$tellraw @s[scores={talent_$(num)=6}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"aqua"},{"translate":"ms.talent.006","fallback":"碎片注入"}]
$tellraw @s[scores={talent_$(num)=7}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"aqua"},{"translate":"ms.talent.007","fallback":"灵气感知"}]

$tellraw @s[scores={talent_$(num)=1}] [{"text":"⏱ 3 > ","color":"aqua"},{"translate":"ms.tag.collect","fallback":"收集"},"/",{"translate":"ms.tag.survive","fallback":"生存"}]
$tellraw @s[scores={talent_$(num)=2}] [{"text":"🔁 60  ⏱ 3 > ","color":"aqua"},{"translate":"ms.tag.survive","fallback":"生存"}]
$tellraw @s[scores={talent_$(num)=3}] [{"text":"> ","color":"aqua"},{"translate":"ms.tag.survive","fallback":"生存"},"/",{"translate":"ms.tag.heal","fallback":"救助"}]
$tellraw @s[scores={talent_$(num)=4}] [{"text":"> ","color":"aqua"},{"translate":"ms.tag.survive","fallback":"生存"}]
$tellraw @s[scores={talent_$(num)=5}] [{"text":"> ","color":"aqua"},{"translate":"ms.tag.survive","fallback":"生存"}]
$tellraw @s[scores={talent_$(num)=6}] [{"text":"> ","color":"aqua"},{"translate":"ms.tag.heal","fallback":"救助"}]
$tellraw @s[scores={talent_$(num)=7}] [{"text":"> ","color":"aqua"},{"translate":"ms.tag.collect","fallback":"收集"}]

$tellraw @s[scores={talent_$(num)=1}] [{"translate":"ms.talent.001.desc","fallback":"收集到灵魂碎片时，移速 +40%；下一次收集所需时间 -0.5 秒，收集中断不会返还该效果"}]
$tellraw @s[scores={talent_$(num)=2}] [{"translate":"ms.talent.002.desc","fallback":"周围 12 格内有守卫者时，移速 +80%"}]
$tellraw @s[scores={talent_$(num)=3}] [{"translate":"ms.talent.003.desc","fallback":"有灵魂处于垂死状态时，移速 +20%"}]
$tellraw @s[scores={talent_$(num)=4}] [{"translate":"ms.talent.004.desc","fallback":"收集到灵魂碎片时，回复 1 血量"}]
$tellraw @s[scores={talent_$(num)=5}] [{"translate":"ms.talent.005.desc","fallback":"蹲下时不作为气息探测目标"}]
$tellraw @s[scores={talent_$(num)=6}] [{"translate":"ms.talent.006.desc","fallback":"收集到灵魂碎片时，所有垂死灵魂的垂死状态持续时间 +5 秒"}]
$tellraw @s[scores={talent_$(num)=7}] [{"translate":"ms.talent.007.desc","fallback":"交互速度 +5%；灵气等级每提升 1 级额外 +5%，至多提升至 +20%"}]