$execute store result score $item npc.count run clear @a[limit=1,tag=npc.user] $(id) 0
$execute store success score $condition npc.state if score $item npc.count matches $(Count)..
