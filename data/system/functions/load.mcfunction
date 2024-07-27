tellraw @a {"text": "Loaded 純白之塔資料包."}

#create scoreboards

scoreboard objectives add tower dummy {"text": "與塔相關的資料"}
scoreboard objectives add temp dummy {"text": "一些暫存的數值"}
scoreboard objectives add money dummy {"text": "玩家金錢"}
scoreboard objectives add dead_event deathCount {"text": "玩家死亡(會被清除)"}
scoreboard objectives setdisplay list money
scoreboard objectives add player.health health {"text": "❤","color": "red"}
scoreboard objectives add player.hunger food
scoreboard objectives setdisplay below_name player.health
scoreboard objectives add player.maxhp dummy
scoreboard objectives add player.mana dummy
scoreboard objectives add player.maxmana dummy
scoreboard objectives add player.shield dummy
scoreboard objectives add player.maxshield dummy
scoreboard objectives add player.potion_level dummy

scoreboard objectives add player.damage.round dummy
scoreboard objectives add player.damage.total dummy
scoreboard objectives add player.damage2.round dummy
scoreboard objectives add player.damage2.total dummy
scoreboard objectives add player.kills dummy
scoreboard objectives add player.kills.round dummy
scoreboard objectives add player.moneygot.round dummy

scoreboard objectives add level dummy {"text": "玩家等級"}
scoreboard objectives add player.exp level {"text": "玩家經驗值"}
scoreboard objectives add player.exp.require dummy {"text": "玩家升級需要多少經驗值"}
scoreboard objectives add skill_points dummy {"text": "技能點數量"}
scoreboard objectives add actionbar_type dummy {"text": "玩家actionbar樣式"}
scoreboard objectives add player.pitch dummy
scoreboard objectives add meditation.id dummy
scoreboard objectives add meditation.timer dummy

scoreboard objectives add Hpots.real dummy
scoreboard objectives add Mpots.real dummy
scoreboard objectives add Hpots.counts dummy
scoreboard objectives add Mpots.counts dummy
scoreboard objectives add Hpots.max dummy
scoreboard objectives add Mpots.max dummy
scoreboard objectives add carrot_on_a_stick.right_click used:carrot_on_a_stick {"text": "胡蘿蔔釣竿右鍵"}
scoreboard objectives add sneak custom:sneak_time
scoreboard objectives add any.timer dummy {"text": "可以是各種東西的計時器"}
scoreboard objectives add shield.recover.timer dummy

scoreboard objectives add attribute.STR dummy
scoreboard objectives add attribute.HP dummy
scoreboard objectives add attribute.RES dummy
scoreboard objectives add attribute.LUC dummy
scoreboard objectives add attribute.INT dummy

#declare tag in_meditation
#declare storage tower:floor.data
#declare storage tower:waves.cache
#declare storage player:cache

#create bossbar
bossbar add timelimit {"text": ""}
bossbar set timelimit visible true
bossbar set timelimit style progress
bossbar set timelimit color pink

#create teams
team add player
team modify player color gray
team modify player prefix {"text":"","color": "green"}
team modify player friendlyFire false
team modify player collisionRule never

team add prepared
team modify prepared color yellow
team modify prepared prefix {"text":"","color": "yellow"}
team modify prepared friendlyFire false
team modify prepared collisionRule never

team add intower
team modify intower color red
team modify intower prefix {"text":"","color": "red"}
team modify intower friendlyFire false
team modify intower collisionRule never

team add outboss
team modify outboss color red
team modify outboss prefix {"text":"","color": "red"}
team modify outboss friendlyFire false
team modify outboss collisionRule never

team add hostile
team modify hostile color red
team modify hostile collisionRule pushOwnTeam
team modify hostile friendlyFire false

team add color.red
team modify color.red color red

#gamerules
difficulty hard

gamerule doMobSpawning false
gamerule doFireTick false
gamerule announceAdvancements true
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doImmediateRespawn true
gamerule doTileDrops false
gamerule disableRaids true
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule universalAnger true
gamerule naturalRegeneration false

#attribute configs
function system:players/attribute/str_config