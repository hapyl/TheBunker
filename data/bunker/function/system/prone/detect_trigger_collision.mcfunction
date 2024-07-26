# Honestly a little janky implementation but better 
# than testing for a block below the player

tag @s remove inTriggerProne
tag @s remove inTriggerUnprone

tag @s add this

execute \
    as @e[type=interaction, tag=triggerProne] at @s align xz \
    if entity @p[tag=this, dy=0] run tag @p[tag=this] add inTriggerProne

execute \
    as @e[type=interaction, tag=triggerUnprone] at @s align xz \
    if entity @p[tag=this, dy=0] run tag @p[tag=this] add inTriggerUnprone

tag @s remove this