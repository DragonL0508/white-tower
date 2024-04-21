#By DragonL
$data merge storage hostile:$(id) {id:$(id),name:$(name),health:$(health),atk:$(atk),speed:$(speed),kb:$(kb),ability_counts:$(ability_counts),ability_cd:$(ability_cd),isBoss:$(isBoss),bossbar_text:"$(bossbar_text)"}

say summon

#$summon $(type) ~ ~ ~ {PortalCooldown:$(health),Tags:["this"],Team:hostile,CustomName:'$(name)',HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}

#$execute if data storage hostile:$(id) {isBoss:1} run function hostile:command/is_boss with storage hostile:$(id)

#$item replace entity @e[tag=this,team=hostile] armor.head with $(head)
#$item replace entity @e[tag=this,team=hostile] armor.chest with $(chest)
#$item replace entity @e[tag=this,team=hostile] armor.legs with $(legs)
#$item replace entity @e[tag=this,team=hostile] armor.feet with $(feet)
#$item replace entity @e[tag=this,team=hostile] weapon.mainhand with $(mainhand)
#$item replace entity @e[tag=this,team=hostile] weapon.offhand with $(offhand)

#$attribute @e[tag=this,team=hostile,limit=1] generic.attack_damage base set $(atk)
#$attribute @e[tag=this,team=hostile,limit=1] generic.movement_speed base set $(speed)
#$attribute @e[tag=this,team=hostile,limit=1] generic.knockback_resistance base set $(kb)

#$scoreboard players set @e[tag=this,team=hostile,limit=1] hostile.ability.cd $(ability_cd)

#$execute as @e[tag=this,team=hostile,limit=1] at @s run function hostile:hostile/$(id)/on_summon

#$tag @e[tag=this,team=hostile] add hostile_$(id)
#execute as @e[tag=this,team=hostile] run tag @s remove this

#add this hostile type to hostile list
#data modify storage hostile:list.cache list set from storage hostile:list list
#$function hostile:command/is_type_exist {counter:0, id:$(id)}