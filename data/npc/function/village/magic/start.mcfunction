advancement revoke @s only npc:village/magic/start

tag @e[tag=npc.village.magic] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this
