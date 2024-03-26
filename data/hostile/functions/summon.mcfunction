#By DragonL
$data merge storage hostile.$(id) {id:$(id),name:$(name),health:$(health),atk:$(atk),speed:$(speed),kb:$(kb),ability_counts:$(ability_counts),ability_cd:$(ability_cd),isBoss:$(isBoss)}

$summon $(type) ~ ~ ~ {PortalCooldown:$(health),Tags:["this"],Team:hostile,CustomName:'{"text":"$(name)","color":"red"}'}

$execute if data storage hostile.$(id) {isBoss:1} run function hostile:is_boss with storage hostile.$(id)

$item replace entity @e[tag=this,team=hostile] armor.head with $(head)
$item replace entity @e[tag=this,team=hostile] armor.chest with $(chest)
$item replace entity @e[tag=this,team=hostile] armor.legs with $(legs)
$item replace entity @e[tag=this,team=hostile] armor.feet with $(feet)
$item replace entity @e[tag=this,team=hostile] weapon.mainhand with $(mainhand)
$item replace entity @e[tag=this,team=hostile] weapon.offhand with $(offhand)

$attribute @e[tag=this,team=hostile,limit=1] generic.attack_damage base set $(atk)
$attribute @e[tag=this,team=hostile,limit=1] generic.movement_speed base set $(speed)
$attribute @e[tag=this,team=hostile,limit=1] generic.knockback_resistance base set $(kb)

$execute as @e[tag=this,team=hostile,limit=1] at @s run function hostile/hostile/$(id)/on_summon

$tag @e[tag=this,team=hostile] add hostile_$(id)
execute as @e[tag=this,team=hostile] run tag @s remove this

#add this hostile type to hostiles list
$data modify storage hostile.list list merge from storage hostile.$(id) id