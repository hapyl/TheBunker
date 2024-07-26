# Allow shooting again
advancement revoke @s only bunker:shoot
item modify entity @s weapon.mainhand bunker:recharge_weapon

# Check if weapon has ammo
execute store result score .ammo temp run data get entity @s SelectedItem.components.minecraft:custom_data.item.weapon.ammo

# No ammo
execute if score .ammo temp matches ..0 run return run function bunker:system/weapon/no_ammo

# Subtract ammo
function bunker:system/weapon/subtract_ammo

# Find weapon and shoot


