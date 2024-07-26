# Make sure the shulker box is here
execute unless block 0 -64 0 yellow_shulker_box run setblock 0 -64 0 yellow_shulker_box

# Give the loot to the player
# (Thanks CloudWolf for the 1.21 yellow shulker box)
loot give @s mine 0 -64 0 stick[custom_data={drop_contents: true}]