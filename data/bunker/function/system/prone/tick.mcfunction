# Check for prone kick
# (see ingame rant about how IDK how to manually make player unprone) -h

function bunker:system/prone/detect_trigger_collision

execute \
    as @s[tag=isProne, tag=inTriggerUnprone] \
    run function bunker:system/prone/do_unprone

# Don't care if already prone
execute as @s[tag=isProne] run return 1

# Detect prone
tag @s remove canProne

# Check if can prone
execute \
    as @s[predicate=is_sneaking, tag=inTriggerProne] \
    run tag @s add canProne

# Reset prone timer is can't prone
execute \
    as @s[tag=!canProne] \
    run scoreboard players set @s prone 0

# Increment prone timer
execute \
    as @s[tag=canProne] \
    run scoreboard players add @s prone 1
    
# Do prone
execute if score @s prone >= .prone_time const run function bunker:system/prone/do_prone