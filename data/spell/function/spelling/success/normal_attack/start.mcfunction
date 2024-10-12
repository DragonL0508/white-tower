summon item_display ^-0.35 ^1.75 ^0.5 {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},item:{id:"minecraft:ochre_froglight",Count:1b},Tags:["this","normal_attack.orb","prj"]}
tp @e[tag=this] ^-0.35 ^1.75 ^0.5 ~-2 ~
scoreboard players set @e[tag=this] prj.life 60

tag @e[tag=this] remove this

#sounds
playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 1.5
#partiicle