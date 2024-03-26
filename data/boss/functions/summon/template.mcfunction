#White tower boss system By DragonL
#declare storage boss.this
#THIS IS A TEMPLATE FILE

#name ID
data merge storage boss.this {id:"template"}

#display name
data merge storage boss.this {name:"-TEMPLATE-"}

#health
data merge storage boss.this {health:50}

#attack damage
data merge storage boss.this {atk:5}

#movement speed
data merge storage boss.this {speed:0.3}

#knockback resistance
data merge storage boss.this {kb:0.3}

#ability counts
data merge storage boss.this {ability_counts:2}

#ability cooldown (tick)
data merge storage boss.this {ability_cd:200}

#bossbar color & style
#color list: yellow, white, red, purple, pink, green, blue
#style list: progress, notched_6, notched_10, notched_12, notched_20,
data merge storage boss.this {bb_color:"yellow", bb_style:"progress"}

#details
    #mob type
    data merge storage boss.this {type:"minecraft:husk"}

    #head
    data merge storage boss.this {head:"air"}

    #chest
    data merge storage boss.this {chest:"diamond_chestplate{Enchantments:[{}]}"}

    #leg
    data merge storage boss.this {legs:"air"}
    
    #foot
    data merge storage boss.this {feet:"air"}

    #mainhand
    data merge storage boss.this {mainhand:"minecraft:stone_sword"}

    #offhand
    data merge storage boss.this {offhand:"air"}


#DO NOT modify the following functions unless you know what you're doing.
#-----
execute if entity @e[team=hostile,tag=boss] run say §c[Summon Failed] There can only be one boss in the world!
execute unless entity @e[team=hostile,tag=boss] run function boss:summon with storage boss.this
#-----