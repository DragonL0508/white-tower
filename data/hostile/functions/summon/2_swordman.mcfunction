#White tower hostile system By DragonL
#declare storage hostile:this

#name ID
data merge storage hostile:this {id:"2_warrior"}

#display name
data merge storage hostile:this {name:"{\"text\":\"死靈劍士\",\"color\":\"dark_gray\",\"bold\": true}"}

#health
data merge storage hostile:this {health:30}

#attack damage
data merge storage hostile:this {atk:1}

#movement speed
data merge storage hostile:this {speed:0.28}

#knockback resistance
data merge storage hostile:this {kb:0}

#ability counts
data merge storage hostile:this {ability_counts:0}

#ability cooldown (tick)
data merge storage hostile:this {ability_cd:200}

#is a boss? (true = 1, false = 0)
data merge storage hostile:this {isBoss:0}

#hostilebar color & style
#If you're creating a regular mob (not a boss), you can ignore this.
data merge storage hostile:this {bossbar_text:"boss_name"}
bossbar set boss_health color red
bossbar set boss_health style progress

#details
    #mob type
    data merge storage hostile:this {type:"minecraft:drowned"}

    #head
    data merge storage hostile:this {head:"leather_helmet{display:{color:0}}"}

    #chest
    data merge storage hostile:this {chest:"leather_chestplate{display:{color:0}}"}

    #leg
    data merge storage hostile:this {legs:"leather_leggings{display:{color:0}}"}
    
    #foot
    data merge storage hostile:this {feet:"leather_boots{display:{color:0}}"}

    #mainhand
    data merge storage hostile:this {mainhand:"minecraft:wooden_sword{CustomModelData:202}"}

    #offhand
    data merge storage hostile:this {offhand:"air"}


#DO NOT modify the following functions unless you know what you're doing.
#-----
function hostile:command/summon with storage hostile:this
#-----