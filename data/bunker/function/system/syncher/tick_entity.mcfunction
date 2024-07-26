# Find owner
tag @a remove syncOwner

scoreboard players operation .sync_id temp = @s sync
execute as @a if score @s sync = .sync_id temp run tag @s add syncOwner

# Remove entity if there is no owner
execute unless entity @a[tag=syncOwner] run function bunker:system/syncher/tick_entity_no_owner

## -------------------------------------------------- ##
## Below this point, the owner exists for this entity ##
## -------------------------------------------------- ##

# Prone entity
execute as @s[tag=prone, type=armor_stand] at @p[tag=syncOwner] run tp @s ~ ~0.75 ~