kill @e[tag=npc.demo.davleek]
summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.demo.davleek"],Rotation:[90.0f,0.0f],CustomName:'{"text":"測試用天天機器人"}',ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2105376}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2105376}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2105376}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"LeekOWO"}}]}
summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.demo.davleek"],width:0.6f,height:2.1f}
summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.demo.davleek"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
function endsky_npc:common/summon {region:"demo",npc:"davleek"}
