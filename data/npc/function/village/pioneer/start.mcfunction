advancement revoke @s only npc:village/pioneer/start

tag @e[tag=npc.village.pioneer] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this
