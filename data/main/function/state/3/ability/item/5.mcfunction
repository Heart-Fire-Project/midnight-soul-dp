title @s[scores={setting.ability_actionbar=2}] actionbar [{"translate":"ms.item.active","fallback":"宝物触发","color":"#33FFAA"}," » ",{"translate":"ms.item.5","fallback":"高效制冷"}]
playsound block.piston.extend player @s
particle snowflake ~ ~0.2 ~ 0.2 0.3 0.2 0.1 36 force @a
scoreboard players set @s item 0
scoreboard players add @s temp.item 1

# 生成
kill @e[tag=I5]
summon zombie ~ ~1 ~ {Tags:[I5,game_entity],Health:1,ArmorItems:[{},{},{},{id:"player_head",count:1,components:{profile:{id:[I;-2028710611,-535870698,-1464817086,-1561423040],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk4Njc5NDUyMTg2OWU4MzI3ZWY4MWRiYzM1Yzk4NTZiYzQwNTFkZjk4ODhkODFlYWIyMTI0NDJiMTc2YTgyZiJ9fX0="}]}}}],Silent:1b,NoAI:1b}
effect give @e[tag=I5] invisibility infinite 0 true
tp @e[tag=I5] @s