advancement revoke @s only npc:demo/howhow/start

tag @e[tag=npc.demo.howhow] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this 
