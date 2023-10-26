

# Called from loop_5s 


# If in water add 10 in_water per loop

# If not in water remove 1 normally

# If around campfire/furnace remove 2 additional


execute unless score @s in_water matches 100.. if block ~ ~ ~ water run scoreboard players operation @s in_water += #10 constant
execute unless block ~ ~ ~ water unless score @s in_water matches ..0 run scoreboard players operation @s in_water -= #1 constant
execute unless score @s in_water matches ..0 if score @s campfires matches 1.. run scoreboard players operation @s in_water -= #2 constant
execute unless score @s in_water matches ..0 if score @s furnace matches 1.. run scoreboard players operation @s in_water -= #2 constant

