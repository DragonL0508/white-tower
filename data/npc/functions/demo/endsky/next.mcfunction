advancement revoke @s only npc:demo/endsky/next

tag @e[tag=npc.demo.endsky] add npc.this
function endsky_npc:common/next
tag @e[tag=npc.this] remove npc.this 
