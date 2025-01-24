execute if score $state data matches 0 run tellraw @s "\n"

$tellraw @s[scores={talent_$(num)=1}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"gold"},{"translate":"ms.talent.101","fallback":"抱火寝薪"}]
$tellraw @s[scores={talent_$(num)=2}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"gold"},{"translate":"ms.talent.102","fallback":"火冒三丈"}]
$tellraw @s[scores={talent_$(num)=3}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"gold"},{"translate":"ms.talent.103","fallback":"祛灵十字"}]
$tellraw @s[scores={talent_$(num)=4}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"gold"},{"translate":"ms.talent.104","fallback":"隐于迷雾"}]
$tellraw @s[scores={talent_$(num)=5}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"gold"},{"translate":"ms.talent.105","fallback":"舍近求远"}]
$tellraw @s[scores={talent_$(num)=6}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"gold"},{"translate":"ms.talent.106","fallback":"共振感应"}]
$tellraw @s[scores={talent_$(num)=7}] [{"translate":"ms.talent","fallback":"[天赋] ","color":"gold"},{"translate":"ms.talent.107","fallback":"碎片侵蚀"}]

$tellraw @s[scores={talent_$(num)=1}] [{"text":"> ","color":"gold"},{"translate":"ms.tag.debuff","fallback":"妨害"}]
$tellraw @s[scores={talent_$(num)=2}] [{"text":"⏱ 3 > ","color":"gold"},{"translate":"ms.tag.detect","fallback":"感知"}]
$tellraw @s[scores={talent_$(num)=3}] [{"text":"> ","color":"gold"},{"translate":"ms.tag.kill","fallback":"杀戮"}]
$tellraw @s[scores={talent_$(num)=4}] [{"text":"🔁 90 > ","color":"gold"},{"translate":"ms.tag.detect","fallback":"感知"},"/",{"translate":"ms.tag.kill","fallback":"杀戮"}]
$tellraw @s[scores={talent_$(num)=5}] [{"text":"🔁 60  ⏱ 5 > ","color":"gold"},{"translate":"ms.tag.detect","fallback":"感知"}]
$tellraw @s[scores={talent_$(num)=6}] [{"text":"⏱ 3 > ","color":"gold"},{"translate":"ms.tag.detect","fallback":"感知"},"/",{"translate":"ms.tag.kill","fallback":"杀戮"}]
$tellraw @s[scores={talent_$(num)=7}] [{"text":"🔁 40 > ","color":"gold"},{"translate":"ms.tag.debuff","fallback":"妨害"}]

$tellraw @s[scores={talent_$(num)=1}] [{"translate":"ms.talent.101.desc","fallback":"对自身的气息探测生效距离 -25%"}]
$tellraw @s[scores={talent_$(num)=2}] [{"translate":"ms.talent.102.desc","fallback":"灵魂解除垂死状态时，使全体灵魂发光且移速 -15%"}]
$tellraw @s[scores={talent_$(num)=3}] [{"translate":"ms.talent.103.desc","fallback":"擦刀状态持续时间 -20%"}]
$tellraw @s[scores={talent_$(num)=4}] [{"translate":"ms.talent.104.desc","fallback":"天赋生效时使全体灵魂获得 5 秒黑暗，自身隐身并持续使距离 40 格以外的灵魂获得发光；天赋将在距离 20 格内有灵魂时结束，在攻击到灵魂时重设冷却为最大值"}]
$tellraw @s[scores={talent_$(num)=5}] [{"translate":"ms.talent.105.desc","fallback":"使距离你较远的至多 2 位灵魂发光"}]
$tellraw @s[scores={talent_$(num)=6}] [{"translate":"ms.talent.106.desc","fallback":"擦刀状态结束时，使最近的灵魂发光"}]
$tellraw @s[scores={talent_$(num)=7}] [{"translate":"ms.talent.107.desc","fallback":"污染场上的一个碎片，至多同时对 3 个碎片生效；被污染的碎片将在被收集时发射一个烟花"}]