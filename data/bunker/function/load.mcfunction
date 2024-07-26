# Setup gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doInsomnia false
gamerule commandBlockOutput false
gamerule randomTickSpeed 0

# Setup scoreboard
scoreboard objectives add system dummy
scoreboard objectives add prone dummy
scoreboard objectives add sync dummy
scoreboard objectives add temp dummy

# Bump version
scoreboard players add .version system 1
scoreboard players set .state system 0

# Init constants
function bunker:init_constants

# Start slow ticking functions
function bunker:start_slow_ticking_functions

tellraw @a[tag=admin] ["§2[TheBunker] §aDatapack loaded!", [" §8(build ", {"score": {"name": ".version", "objective": "system"}, "color": "dark_gray"}], "§8)"]
