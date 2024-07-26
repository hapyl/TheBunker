# Remove sync
scoreboard players reset @s sync

# Remove entity unless has '__syncDontRemoveUnowned' tag
execute unless entity @s[tag=__syncDontRemoveUnowned] run function bunker:util/remove

return fail