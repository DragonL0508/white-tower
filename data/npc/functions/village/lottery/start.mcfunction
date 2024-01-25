advancement revoke @s only npc:village/lottery/start

tag @e[tag=npc.village.lottery] add npc.this
function endsky_npc:common/start
tag @e[tag=npc.this] remove npc.this
