#messsages
title @a subtitle {"text": "§7Congratulations"}
title @a title {"text": "§6關卡通關"}
execute as @a[team=intower] at @s run playsound entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1 1
execute as @a[team=intower] at @s run playsound entity.firework_rocket.large_blast_far master @s ~ ~ ~ 1 1 1

#commands
scoreboard players set state tower 3
schedule clear system:tower/command/scheduler/fighting/schedule