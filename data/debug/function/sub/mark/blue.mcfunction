summon marker ~ ~0.2 ~ {Tags:["marker_blue"]}
tp @e[tag=marker_blue,distance=..2] @s
execute as @e[tag=marker_blue,distance=..2] run title @n[team=admin,type=player] actionbar [{"translate":"ms.blue","fallback":"灵魂碎片","color":"blue"}," ",{"translate":"ms.mark.summon","fallback":"点位已生成"}]