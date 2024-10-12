execute as @e[type=item_display,tag=normal_attack.orb] at @s run function spell:spelling/success/normal_attack/tick

#prj life
#scoreboard players remove @e[tag=prj,scores={prj.life=1..}] prj.life 1
#kill @e[tag=prj,scores={prj.life=0}]