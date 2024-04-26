#declare storage hostile:list
#declare storage ability:cache

#create bossbar
bossbar add boss_health {"text": "Boss血量"}

scoreboard objectives add hostile.ability.cd dummy {"text": "敵方技能使用CD"}
scoreboard objectives add 1_magician_id dummy