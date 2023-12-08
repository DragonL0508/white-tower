advancement revoke @s only npc:demo/davleek/start

tag @e[tag=npc.demo.davleek] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this 
