team join prepare @a[team=!admin]
function main:state/1/enter
tellraw @a [{"text":" » ","bold":true,"color":"#64B3F4"},{"translate":"ms.info.forcestart","fallback":"%s 已强制进入开始阶段","with":[{"selector":"@s"}],"bold":false}]