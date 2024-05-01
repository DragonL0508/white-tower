#White tower hostile system By DragonL
#declare storage hostile:this
#THIS IS A TEMPLATE FILE

#name ID
data merge storage hostile:this {id:"1_miniboss"}

#display name
data merge storage hostile:this {name:"[{\"text\":\"神聖劍士 \",\"color\":\"#FFFFC4\",\"bold\": true},{\"text\":\"札爾修特\",\"color\":\"#FFFFC4\",\"bold\": true}]"}

#health
data merge storage hostile:this {health:60}

#attack damage
data merge storage hostile:this {atk:4}

#movement speed
data merge storage hostile:this {speed:0.25}

#knockback resistance
data merge storage hostile:this {kb:1}

#ability counts
data merge storage hostile:this {ability_counts:2}

#ability cooldown (tick)
data merge storage hostile:this {ability_cd:140}

#is a boss? (true = 1, false = 0)
data merge storage hostile:this {isBoss:1}

#hostilebar color & style
#If you're creating a regular mob (not a boss), you can ignore this.
data merge storage hostile:this {bossbar_text:"§f§l神聖劍士 §e§l札爾修特"}
bossbar set boss_health color white
bossbar set boss_health style progress

#details
    #mob type
    data merge storage hostile:this {type:"minecraft:drowned"}

    #head
    data merge storage hostile:this {head:"player_head{SkullOwner:{Id:[I;441832940,1921401629,-2017914435,1720721081],Properties:{textures:[{Value:\"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjdjMTc4NjVjMjc5MzRmOGM4ZWM2YzYyN2UxZmUyZDk5Zjc4M2VjOGFlNDE0Y2EyZDRmZDM2NDBhN2YzYyJ9fX0=\"}]}}}"}

    #chest
    data merge storage hostile:this {chest:"iron_chestplate"}

    #leg
    data merge storage hostile:this {legs:"iron_leggings"}
    
    #foot
    data merge storage hostile:this {feet:"iron_boots"}

    #mainhand
    data merge storage hostile:this {mainhand:"minecraft:wooden_sword{CustomModelData:121}"}

    #offhand
    data merge storage hostile:this {offhand:"air"}


#DO NOT modify the following functions unless you know what you're doing.
#-----
function hostile:command/summon with storage hostile:this
#-----