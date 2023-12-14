tellraw @a {"text": "Loaded 純白之塔資料包."}
say 只是測試一下git

#create scoreboards

scoreboard objectives add money dummy {"text": "玩家金錢"}
scoreboard objectives setdisplay list money
scoreboard objectives add player.health health {"text": "❤","color": "red"}
scoreboard objectives setdisplay below_name player.health
scoreboard objectives add player.maxhp dummy
scoreboard objectives add player.mana dummy
scoreboard objectives add player.maxmana dummy
scoreboard objectives add level dummy {"text": "玩家等級"}
scoreboard objectives add skill_points dummy {"text": "技能點數量"}
scoreboard objectives add actionbar_type dummy {"text": "玩家actionbar樣式"}

scoreboard objectives add Hpots.real dummy
scoreboard objectives add Mpots.real dummy
scoreboard objectives add Hpots.counts dummy
scoreboard objectives add Mpots.counts dummy
scoreboard objectives add Hpots.max dummy
scoreboard objectives add Mpots.max dummy
scoreboard objectives add carrot_on_a_stick.right_click used:carrot_on_a_stick {"text": "胡蘿蔔釣竿右鍵"}

scoreboard objectives add attribute.STR dummy
scoreboard objectives add attribute.HP dummy
scoreboard objectives add attribute.RES dummy
scoreboard objectives add attribute.LUC dummy
scoreboard objectives add attribute.INT dummy

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