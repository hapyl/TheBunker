## summary: Creates a sync local Id between a player and entities.

# The function must be called AS a player that entities will be synced with. 
# Entities must be tagged with 'sync' to sync to the player.

#
# You may include a parameter as a tag, valid parameters:
# - '__syncDontRemoveUnowned' - won't kill entities if owner unsyncs

execute unless entity @e[tag=sync] run tellraw @a[tag=admin] "§c[DEBUG] §eCannot sync player because there are no 'sync' entities!"
execute unless entity @e[tag=sync] run return 0

# Sync
scoreboard players add .nextId sync 1

scoreboard players operation @s sync = .nextId sync
scoreboard players operation @e[tag=sync] sync = .nextId sync

tag @e[tag=sync] remove sync