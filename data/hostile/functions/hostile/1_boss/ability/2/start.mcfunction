execute as @p[team=intower,gamemode=adventure] at @s run summon marker ~ ~ ~ {Tags:["boss_tp_mark","clear"]}
function cb:schedule {ticks:30,selector:"@s",command:"function hostile:hostile/1_boss/ability/2/teleport"}
function cb:schedule {ticks:50,selector:"@e[tag=boss_teleporter,sort=random,limit=3]",command:"function hostile:hostile/1_boss/ability/2/summon_mobs"}