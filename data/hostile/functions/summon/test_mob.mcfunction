#White tower hostile system By DragonL
#declare storage hostile.this
#THIS IS A TEMPLATE FILE

#name ID
data merge storage hostile.this {id:"testmob"}

#display name
data merge storage hostile.this {name:"test mob"}

#health
data merge storage hostile.this {health:20}

#attack damage
data merge storage hostile.this {atk:5}

#movement speed
data merge storage hostile.this {speed:0.4}

#knockback resistance
data merge storage hostile.this {kb:0.1}

#ability counts
data merge storage hostile.this {ability_counts:2}

#ability cooldown (tick)
data merge storage hostile.this {ability_cd:200}

#is a boss? (true = 1, false = 0)
data merge storage hostile.this {isBoss:0}

#hostilebar color & style
#If you're creating a regular mob (not a boss), you can ignore this.
bossbar set boss_health color red
bossbar set boss_health style progress

#details
    #mob type
    data merge storage hostile.this {type:"minecraft:husk"}

    #head
    data merge storage hostile.this {head:"leather_helmet"}

    #chest
    data merge storage hostile.this {chest:"air"}

    #leg
    data merge storage hostile.this {legs:"air"}
    
    #foot
    data merge storage hostile.this {feet:"air"}

    #mainhand
    data merge storage hostile.this {mainhand:"wooden_sword{CustomModelData:101}"}

    #offhand
    data merge storage hostile.this {offhand:"air"}


#DO NOT modify the following functions unless you know what you're doing.
#-----
function hostile:summon with storage hostile.this
#-----