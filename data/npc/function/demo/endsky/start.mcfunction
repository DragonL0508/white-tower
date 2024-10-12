advancement revoke @s only npc:demo/endsky/start

tag @e[tag=npc.demo.endsky] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this 
