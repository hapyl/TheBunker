# Spawn armor stand with shulker and slime on top of it
# Shulker is what will force player into crawl mode
# Slime is so other players don't get proned when next to the proned player
# We're synching all entities instead of just armor stand to auto remove them when player unprones
summon armor_stand ~ ~2 ~ {Marker:1b,Tags:["prone", "sync"], Invisible:true,\
    Passengers:\
        [\
            {id:"minecraft:shulker",Invulnerable:true,NoAI:1b,AttachFace:0b,Tags:["prone", "sync", "DInvis"],attributes:[{id:"minecraft:generic.scale",base:0.33}]},\
            {id:"minecraft:slime",Invulnerable:true,NoAI:1b,Tags:["prone", "sync", "DInvis"],attributes:[{id:"minecraft:generic.scale",base:1.5}]}\
        ]\
    }

# Sync with entity
function bunker:system/syncher/sync