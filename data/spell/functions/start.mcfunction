#summon
    summon interaction ~ ~ ~ {Tags:["spell.hitbox"],width:3f,height:3f}
#tag add
    tag @s add ms.holding
    tag @s add can_not_sprint
#spell button
    scoreboard players set @s spell.button 1
#title set
    title @s times 5 999999 10
    title @s subtitle ["",{"text":"-","underlined":true,"color":"yellow"},"     ",{"text":"-","underlined":true,"color":"yellow"},"     ",{"text":"-","underlined":true,"color":"yellow"}]
    title @s title {"text": ""}