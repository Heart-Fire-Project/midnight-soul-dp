# 修改告示牌数据
# 需要参数 坐标位置{x/y/z} 是否发光[0/1] 颜色 第二/三行键名 第二/三行空显 点击运行指令
$data merge block $(x) $(y) $(z) {front_text:{has_glowing_text:$(glow)b,color:$(color),messages:['{"text":"","clickEvent":{"action":"run_command","value":"$(command)"}}','{"translate":"$(trans_2)","fallback":"$(fallb_2)"}','{"translate":"$(trans_3)","fallback":"$(fallb_3)"}','{"text":""}']},is_waxed:1b}