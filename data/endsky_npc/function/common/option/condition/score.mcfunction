$execute as @a[limit=1,tag=npc.user] store success score $condition npc.state if score $(target) $(score) matches $(range)
