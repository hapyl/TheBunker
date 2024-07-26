# Forcefuly unprone
# function bunker:system/prone/do_unprone

tag @s add isProne
scoreboard players set @s prone 0

function bunker:system/prone/spawn_prone_entity

# Fx
playsound entity.horse.saddle master @a ~ ~ ~ 1 0.5