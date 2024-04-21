$tag @s add prj.$(id)
tag @s add prj
$data merge entity @s {CustomName:'{"text": "$(display_name)"}'}

#add a new storage for this prj
$data merge storage prj:$(id) {id:$(id),display_name:$(display_name),speed:$(speed),lifetime:$(lifetime),through_wall:$(through_wall),damage:$(damage)}

#set score value
$scoreboard players set @s prj.life $(lifetime)
$scoreboard players set @s prj.through_wall $(through_wall)
$scoreboard players set @s prj.target_type $(target)
$scoreboard players set @s prj.damage $(damage)

#execute on summon event
$function prj:projectiles/$(id)/on_summon

#add the prj to prj list
data modify storage prj:list.cache list set from storage prj:list list
$function prj:command/is_type_exist {counter:0, id:$(id)}

#create it's own storage
$data merge storage prj:number_id_$(number_id) {Owner:$(owner)}

#remove this.prj tag
tag @s remove prj.this