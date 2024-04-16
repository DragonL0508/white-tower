#set bossbar's info
$bossbar set boss_health max $(health)
$bossbar set boss_health name {"text":"$(bossbar_text)","color":"red","bold":"true"}
tag @e[tag=this,team=hostile] add boss