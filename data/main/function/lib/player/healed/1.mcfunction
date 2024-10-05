function base:random {min:"1",max:"3"}

execute if score $random temp2 matches 1 run tellraw @a[team=!admin] [{"text":"» ","color":"yellow","bold":true},{"translate":"ms.info.3.healed.101","fallback":"%s 已遵循指引，寻得归途","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 1 run tellraw @a[team=!admin] [{"text":"» ","color":"yellow","bold":true},{"translate":"ms.info.3.healed.102","fallback":"灵气凝结，%s 重归战场","bold":false,"with":[{"selector":"@s"}]}]
execute if score $random temp2 matches 1 run tellraw @a[team=!admin] [{"text":"» ","color":"yellow","bold":true},{"translate":"ms.info.3.healed.103","fallback":"%s 拨开了眼前迷雾，光明又至","bold":false,"with":[{"selector":"@s"}]}]