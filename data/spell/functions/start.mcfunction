#summon
    summon interaction ~ ~1.25 ~ {Tags:["spell.hitbox"],width:0.5f,height:0.5f}
#tag add
    tag @s add ms.holding
#spell button
    scoreboard players set @s spell.button 1
#title set
    title @s times 5 999999 10
    title @s subtitle ["",{"text":"-","underlined":true,"color":"yellow"},"     ",{"text":"-","underlined":true,"color":"yellow"},"     ",{"text":"-","underlined":true,"color":"yellow"}]
    title @s title {"text": ""}