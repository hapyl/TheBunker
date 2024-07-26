# Fx for pronable places

execute as @e[type=interaction, tag=triggerProne] at @s run particle snowflake ~ ~0.1 ~ 0.1 0 0.1 0 3

# Reschedule
schedule function bunker:system/prone/tick_10 10t append