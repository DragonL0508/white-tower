#White tower hostile system By DragonL
#declare storage hostile:this
#THIS IS A TEMPLATE FILE

#name ID
data merge storage hostile:this {id:"1_archer"}

#display name
data merge storage hostile:this {name:"{\"text\":\"聖白弓兵\",\"color\":\"#FFFFC4\",\"bold\": true}"}

#health
data merge storage hostile:this {health:20}

#attack damage
data merge storage hostile:this {atk:0}

#movement speed
data merge storage hostile:this {speed:0.2}

#knockback resistance
data merge storage hostile:this {kb:0}

#ability counts
data merge storage hostile:this {ability_counts:1}

#ability cooldown (tick)
data merge storage hostile:this {ability_cd:130}

#is a boss? (true = 1, false = 0)
data merge storage hostile:this {isBoss:0}

#hostilebar color & style
#If you're creating a regular mob (not a boss), you can ignore this.
data merge storage hostile:this {bossbar_text:"boss_name"}
bossbar set boss_health color red
bossbar set boss_health style progress

#details
    #mob type
    data merge storage hostile:this {type:"minecraft:skeleton"}

    #head
    data merge storage hostile:this {head:"chainmail_helmet"}

    #chest
    data merge storage hostile:this {chest:"leather_chestplate{display:{color:16777215}}"}

    #leg
    data merge storage hostile:this {legs:"air"}
    
    #foot
    data merge storage hostile:this {feet:"leather_boots{display:{color:16777215}}"}

    #mainhand
    data merge storage hostile:this {mainhand:"bow"}

    #offhand
    data merge storage hostile:this {offhand:"air"}


#DO NOT modify the following functions unless you know what you're doing.
#-----
function hostile:command/summon with storage hostile:this
#-----