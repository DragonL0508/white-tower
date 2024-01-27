kill @e[tag=npc.village.magic]

# 1. 召喚顯示本體，可為盔甲架或其他實體(如: 村民、貓等)
#    NPC顯示名稱將取用CustomName之內容
#    每次對話結束時NPC將轉回初始Rotation
summon minecraft:armor_stand ~ ~ ~ {Tags:["npc.this","npc.tag","npc.figure","npc.village.magic"],Rotation:[90.0f,0.0f],CustomName:'{"text":"魔法師-西格瑪"}',ShowArms:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15799830}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"TNT"}}]}

# 2. 召喚互動實體，可依據顯示本體的碰撞箱大小調整互動實體的寬、高與位置，使其能夠完全包覆顯示本體
summon minecraft:interaction ~ ~-0.05 ~ {Tags:["npc.this","npc.tag","npc.village.magic"],width:0.6f,height:2.1f}

# 3. 召喚替代名條，召喚高度同樣可依據本體之碰撞箱調整(建議高度: 本體碰撞箱高度 + 0.475)
summon minecraft:text_display ~ ~2.475 ~ {Tags:["npc.this","npc.tag","npc.name","npc.village.magic"],billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

function endsky_npc:common/summon {region:"village",npc:"magic"}
