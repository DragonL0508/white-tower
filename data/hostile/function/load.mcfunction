#declare storage hostile:list
#declare storage ability:cache

#create bossbar
bossbar add boss_health {"text": "Boss血量"}

scoreboard objectives add hostile.ability.cd dummy {"text": "敵方技能使用CD"}
scoreboard objectives add hostile_id dummy
scoreboard objectives add summoned_entity_counts dummy
scoreboard objectives add tp_counts dummy

scoreboard objectives add ASXVelocity dummy
scoreboard objectives add ASYVelocity dummy
scoreboard objectives add ASZVelocity dummy
scoreboard objectives add ASX1 dummy
scoreboard objectives add ASY1 dummy
scoreboard objectives add ASZ1 dummy
scoreboard objectives add ASSpeed dummy