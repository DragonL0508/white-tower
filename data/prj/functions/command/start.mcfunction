$tag @s add prj.$(id)
tag @s add prj
$data merge entity @s {CustomName:'{"text": "$(display_name)"}'}

#add a new storage for this prj
$data merge storage prj:$(id) {id:$(id),display_name:$(display_name),speed:$(speed),lifetime:$(lifetime),through_wall:$(through_wall)}

#set score value
$scoreboard players set @s prj.life $(lifetime)

#remove this.prj tag
tag @s remove prj.this

#execute on summon event
$function prj:projectiles/$(id)/on_summon

#add the prj to prj
data modify storage prj:list.cache list set from storage prj:list list
$function prj:command/is_type_exist {counter:0, id:$(id)}