#set bossbar's info
$bossbar set boss_health max $(health)
$bossbar set boss_health name {"text":"§c§l$(bossbar_text)"}
tag @e[tag=this,team=hostile] add boss