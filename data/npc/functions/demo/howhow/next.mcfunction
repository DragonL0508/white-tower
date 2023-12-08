advancement revoke @s only npc:demo/howhow/next

tag @e[tag=npc.demo.howhow] add npc.this
function endsky_npc:common/next
tag @e[tag=npc.this] remove npc.this 
