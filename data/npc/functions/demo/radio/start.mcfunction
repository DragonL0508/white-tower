advancement revoke @s only npc:demo/radio/start

tag @e[tag=npc.demo.radio] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this 
