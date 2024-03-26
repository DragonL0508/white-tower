#By DragonL
$data merge storage boss.$(id) {id:$(id),name:$(name),health:$(health),atk:$(atk),speed:$(speed),kb:$(kb),ability_counts:$(ability_counts),ability_cd:$(ability_cd),bb_color:$(bb_color),bb_style:$(bb_style)}

$summon $(type) ~ ~ ~ {PortalCooldown:$(health),Tags:["this","boss"],Team:hostile,CustomName:'{"text":"$(name)","color":"red"}'}

$item replace entity @e[tag=this,tag=boss] armor.head with $(head)
$item replace entity @e[tag=this,tag=boss] armor.chest with $(chest)
$item replace entity @e[tag=this,tag=boss] armor.legs with $(legs)
$item replace entity @e[tag=this,tag=boss] armor.feet with $(feet)
$item replace entity @e[tag=this,tag=boss] weapon.mainhand with $(mainhand)
$item replace entity @e[tag=this,tag=boss] weapon.offhand with $(offhand)

$attribute @e[tag=this,tag=boss,limit=1] generic.attack_damage base set $(atk)
$attribute @e[tag=this,tag=boss,limit=1] generic.movement_speed base set $(speed)
$attribute @e[tag=this,tag=boss,limit=1] generic.knockback_resistance base set $(kb)