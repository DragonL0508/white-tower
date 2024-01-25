advancement revoke @s only npc:village/potion/start

tag @e[tag=npc.village.potion] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this
