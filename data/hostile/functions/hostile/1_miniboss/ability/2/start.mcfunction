execute as @e[tag=hostile_1_miniboss_clone] at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force
tp @e[tag=hostile_1_miniboss_clone] ~ -500 ~
kill @e[tag=hostile_1_miniboss_clone]
function hostile:remove {target:"@e[tag=hostile_1_miniboss_clone]"}

tellraw @a[team=intower] {"text": "§7§o*  分身使札爾修特的§c§o防禦力提升§7§o了...  *"}
execute as @e[tag=mob_spawn_spot,sort=random,limit=2] at @s run function hostile:summon/1_miniboss_clone