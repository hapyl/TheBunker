## Tick ingame players
execute as @a[tag=ingame] at @s run function bunker:tick_player

## Tick dev entities
# The reason we using 3s instead of infinite is so it's obvious 
# something broke if we see visible entity
execute as @e[tag=DInvis] run effect give @s invisibility 3 1 true

# Force look at closest player
execute as @e[tag=DLook] at @s run tp @s ~ ~ ~ facing entity @p[distance=..6.39]
