#set bossbar's info
$bossbar set boss_health max $(health)
$bossbar set boss_health name {"text":"$(name)","color":"red"}
tag @e[tag=this,team=hostile] add boss