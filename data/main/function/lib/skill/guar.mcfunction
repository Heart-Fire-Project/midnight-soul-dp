tellraw @s "\n"

tellraw @s[scores={skill=1}] [{"translate":"ms.skill","fallback":"[技能] ","color":"red"},{"translate":"ms.skill.101","fallback":"虔诚力场"}]
tellraw @s[scores={skill=2}] [{"translate":"ms.skill","fallback":"[技能] ","color":"red"},{"translate":"ms.skill.102","fallback":"灵力掌控"}]
tellraw @s[scores={skill=3}] [{"translate":"ms.skill","fallback":"[技能] ","color":"red"},{"translate":"ms.skill.103","fallback":"唤灵留迹"}]
tellraw @s[scores={skill=4}] [{"translate":"ms.skill","fallback":"[技能] ","color":"red"},{"translate":"ms.skill.104","fallback":"恶灵诅咒"}]
tellraw @s[scores={skill=5}] [{"translate":"ms.skill","fallback":"[技能] ","color":"red"},{"translate":"ms.skill.105","fallback":"雾影阴霾"}]

tellraw @s[scores={skill=1}] [{"text":"🔁 70  ⏱ 7 > ","color":"red"},{"translate":"ms.tag.detect","fallback":"感知"}]
tellraw @s[scores={skill=2}] [{"text":"🔁 40  ⏱ 30 > ","color":"red"},{"translate":"ms.tag.kill","fallback":"杀戮"}]
tellraw @s[scores={skill=3}] [{"text":"🔁 60  ⏱ 20 > ","color":"red"},{"translate":"ms.tag.detect","fallback":"感知"}]
tellraw @s[scores={skill=4}] [{"text":"🔁 60 > ","color":"red"},{"translate":"ms.tag.debuff","fallback":"妨害"}]
tellraw @s[scores={skill=5}] [{"text":"🔁 75  ⏱ 12 > ","color":"red"},{"translate":"ms.tag.kill","fallback":"杀戮"},"/",{"translate":"ms.tag.strategy","fallback":"策略"}]

tellraw @s[scores={skill=1}] [{"translate":"ms.skill.101.desc","fallback":"即刻使全部灵魂发光，其中距离你最近的灵魂效果时长翻倍"}]
tellraw @s[scores={skill=2}] [{"translate":"ms.skill.102.desc","fallback":"技能结束后的 10 秒内移速 +100%；技能持续期间内每有一个碎片被收集则获取 1 层额外加成，上限 5 层；每层会在技能结束后附加 6 秒的伤害翻倍，从第 2 层开始每层额外延长 5 秒移速加成"}]
tellraw @s[scores={skill=3}] [{"translate":"ms.skill.103.desc","fallback":"移速 +20%；标记最远的灵魂令其发光并传送至其附近，技能持续时间内被标记的灵魂会持续显示尾迹"}]
tellraw @s[scores={skill=4}] [{"translate":"ms.skill.104.desc","fallback":"为一个随机的灵魂宝物盒附加%s效果，若没有未被诅咒的灵魂宝物盒则生成 2 个；技能施放时自身在 8 秒内移速 +60\u00A7%%，场上每有一个被诅咒的灵魂宝物盒延长 8 秒时间","with":[{"translate":"ms.tooltip.curse","fallback":"诅咒","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"ms.tooltip,curse","fallback":"诅咒","color":"red"},"\n",{"translate":"ms.tootip.curse.detail","fallback":"灵魂经过时自身发光且移速 -15%\n守卫者经过时全体灵魂发光且自身移速 +20%\n开启该灵魂宝物盒时获取一次翻倍效果","color":"white"}]}}]}]
tellraw @s[scores={skill=5}] [{"translate":"ms.skill.105.desc","fallback":"隐身且移速 +140%；技能持续时间内无法进行攻击，技能结束时自动对周围 2 格内的灵魂发动一次斩击，无论是否命中都会进入擦刀状态"}]