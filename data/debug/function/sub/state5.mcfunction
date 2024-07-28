function main:state/5/enter
tellraw @a [{"text":"» ","bold":true,"color":"#C2E59C"},{"translate":"ms.info.forceend","fallback":"%s 已强制进入结束阶段","with":[{"selector":"@s"}],"bold":false}]