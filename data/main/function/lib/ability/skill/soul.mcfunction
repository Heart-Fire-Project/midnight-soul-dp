tellraw @s "\n"

tellraw @s[scores={skill=1}] [{"translate":"ms.skill","fallback":"[技能] ","color":"#5599FF"},{"translate":"ms.skill.001","fallback":"幻影迷踪"}]
tellraw @s[scores={skill=2}] [{"translate":"ms.skill","fallback":"[技能] ","color":"#5599FF"},{"translate":"ms.skill.002","fallback":"灵灯之筑"}]
tellraw @s[scores={skill=3}] [{"translate":"ms.skill","fallback":"[技能] ","color":"#5599FF"},{"translate":"ms.skill.003","fallback":"逆向追踪"}]
tellraw @s[scores={skill=4}] [{"translate":"ms.skill","fallback":"[技能] ","color":"#5599FF"},{"translate":"ms.skill.004","fallback":"铤而走险"}]
tellraw @s[scores={skill=5}] [{"translate":"ms.skill","fallback":"[技能] ","color":"#5599FF"},{"translate":"ms.skill.005","fallback":"锚定虚影"}]

tellraw @s[scores={skill=1}] [{"text":"🔁 60  ⏱ 10 > ","color":"#5599FF"},{"translate":"ms.tag.survive","fallback":"生存"}]
tellraw @s[scores={skill=2}] [{"text":"🔁 75  ⏱ 15 > ","color":"#5599FF"},{"translate":"ms.tag.heal","fallback":"救助"},"/",{"translate":"ms.tag.debuff","fallback":"妨害"}]
tellraw @s[scores={skill=3}] [{"text":"🔁 70 > ","color":"#5599FF"},{"translate":"ms.tag.detect","fallback":"感知"},"/",{"translate":"ms.tag.debuff","fallback":"妨害"}]
tellraw @s[scores={skill=4}] [{"text":"🔁 60  ⏱ 12 > ","color":"#5599FF"},{"translate":"ms.tag.strategy","fallback":"策略"}]
tellraw @s[scores={skill=5}] [{"text":"🔁 90 > ","color":"#5599FF"},{"translate":"ms.tag.survive","fallback":"生存"},"/",{"translate":"ms.tag.strategy","fallback":"策略"}]

tellraw @s[scores={skill=1}] [{"translate":"ms.skill.001.desc","fallback":"隐身且移速 +100%；若距离守卫者 12 格以内则改为移速 +140%"}]
tellraw @s[scores={skill=2}] [{"translate":"ms.skill.002.desc","fallback":"自身持续发光且移速 -60%；技能结束后视为点亮一次灵魂之灯，若场上没有垂死灵魂则改为使一位守卫者在 15 秒内发光且移速 -75%"}]
tellraw @s[scores={skill=3}] [{"translate":"ms.skill.003.desc","fallback":"使所有守卫者获得发光，若距离 25 格以内还会移速 -30%；守卫者距离你越近其所获得效果的时长越长，距离 12 格以内时达到上限发光 30 秒与减速 10 秒"}]
tellraw @s[scores={skill=4}] [{"translate":"ms.skill.004.desc","fallback":"有守卫者距离 20 格以内时可能触发自身移速 +100% 且守卫者移速 -90%，或是自身移速 -60%；若守卫者距离 20 格以外则可能触发使最近的守卫者发光且强制进入擦刀状态，或是自身传送至最近的守卫者处并移速 -100%；触发上述负面效果的概率初始为 5%，但每次使用该技能都会增加 7%，至多提升至 40%"}]
tellraw @s[scores={skill=5}] [{"translate":"ms.skill.005.desc","fallback":"初始冷却减半；首次施放时原地生成一个虚影锚点，第二次及之后施放时原地生成一个虚影锚点并传送至上一个虚影锚点"}]