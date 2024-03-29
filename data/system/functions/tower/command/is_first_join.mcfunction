#floor data setup
$function system:tower/floors/$(floor)/setup
scoreboard players set timer tower 15
bossbar set timelimit max 15

#setup waves data first
$function system:tower/floors/$(floor)/waves