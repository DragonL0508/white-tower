#White tower hostile system By DragonL
#declare storage hostile:this
#THIS IS A TEMPLATE FILE

#name ID
data merge storage hostile:this {id:"1_wolf"}

#display name
data merge storage hostile:this {name:"{\"text\":\"聖白獵犬\",\"color\":\"#FFFFC4\",\"bold\": true}"}

#health
data merge storage hostile:this {health:15}

#attack damage
data merge storage hostile:this {atk:6}

#movement speed
data merge storage hostile:this {speed:0.3}

#knockback resistance
data merge storage hostile:this {kb:0}

#ability counts
data merge storage hostile:this {ability_counts:0}

#ability cooldown (tick)
data merge storage hostile:this {ability_cd:140}

#is a boss? (true = 1, false = 0)
data merge storage hostile:this {isBoss:0}

#hostilebar color & style
#If you're creating a regular mob (not a boss), you can ignore this.
data merge storage hostile:this {bossbar_text:"boss_name"}
bossbar set boss_health color red
bossbar set boss_health style progress

#details
    #mob type
    data merge storage hostile:this {type:"minecraft:wolf"}

    #head
    data merge storage hostile:this {head:"air"}

    #chest
    data merge storage hostile:this {chest:"air"}

    #leg
    data merge storage hostile:this {legs:"air"}
    
    #foot
    data merge storage hostile:this {feet:"air"}

    #mainhand
    data merge storage hostile:this {mainhand:"air"}

    #offhand
    data merge storage hostile:this {offhand:"air"}


#DO NOT modify the following functions unless you know what you're doing.
#-----
function hostile:command/summon with storage hostile:this
#-----