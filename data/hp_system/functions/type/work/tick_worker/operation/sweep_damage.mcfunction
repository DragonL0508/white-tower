#Made By Fan_Fan_tom
#放大
execute store result score deno hit_amount run data get storage this:this deno 10
execute store result score mole hit_amount run data get storage this:this mole 1000
execute store result score basic hit_amount run data get storage this:this basic 100000



#運算
execute store result storage this:this multiple double 0.01 run scoreboard players operation mole hit_amount /= deno hit_amount



#放大
execute store result score multiple hit_amount run data get storage this:this multiple 100
#運算
execute store result storage this:this result double 0.000001 run scoreboard players operation basic hit_amount *= multiple hit_amount
#result
execute store result score result hit_amount run data get storage this:this result 1
#work
$scoreboard players operation $(who) damage $(operation)= result hit_amount

#add to final damage
$scoreboard players operation @s Fan.FinalDamage += $(who) damage