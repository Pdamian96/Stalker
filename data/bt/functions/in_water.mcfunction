execute unless score @s in_water matches 100.. if block ~ ~ ~ water run scoreboard players operation @s in_water += #10 constant
execute unless block ~ ~ ~ water unless score @s in_water matches ..0 run scoreboard players operation @s in_water -= #1 constant
execute if score @s campfires matches 1.. run scoreboard players operation @s in_water -= #2 constant

say yeah
