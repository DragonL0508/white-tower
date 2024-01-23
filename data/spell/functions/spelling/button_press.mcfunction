#show subtitle
$scoreboard players set what.is.this.button spell.button $(button)
execute if score what.is.this.button spell.button matches 1 run title @s subtitle ["",{"score":{"name":"@s","objective":"spell.clicked.1"},"underlined":true,"color":"yellow"},"     ",{"text":"-","underlined":true,"color":"yellow"},"     ",{"text":"-","underlined":true,"color":"yellow"}]
execute if score what.is.this.button spell.button matches 2 run title @s subtitle ["",{"score":{"name":"@s","objective":"spell.clicked.1"},"underlined":true,"color":"yellow"},"     ",{"score":{"name":"@s","objective":"spell.clicked.2"},"underlined":true,"color":"yellow"},"     ",{"text":"-","underlined":true,"color":"yellow"}]
execute if score what.is.this.button spell.button matches 3 run title @s subtitle ["",{"score":{"name":"@s","objective":"spell.clicked.1"},"underlined":true,"color":"yellow"},"     ",{"score":{"name":"@s","objective":"spell.clicked.2"},"underlined":true,"color":"yellow"},"     ",{"score":{"name":"@s","objective":"spell.clicked.3"},"underlined":true,"color":"yellow"}]
title @s title {"text": ""}

#animation
function spell:spelling/animation/spell

#next button
scoreboard players add @s spell.button 1

execute if score @s spell.button matches 4 run function spell:spelling/what_spell