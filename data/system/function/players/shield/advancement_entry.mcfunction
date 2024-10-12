execute if entity @s[tag=shield.enable] run function system:players/shield/got_attack
advancement revoke @s only system:shield_got_attack

scoreboard players reset @s shield.recover.timer