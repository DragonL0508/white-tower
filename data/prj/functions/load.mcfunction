#declare storage prj:this
#declare storage prj:list
#declare storage prj:list_cache

scoreboard objectives add prj.life dummy {"text": "投射物生命時長"}
scoreboard objectives add prj.through_wall dummy {"text": "投射物是否可以穿牆"}
scoreboard objectives add prj.target_type dummy {"text": "投射物目標類別"}