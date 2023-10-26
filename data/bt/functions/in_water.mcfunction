execute if block ~ ~ ~ water run scoreboard players operation @s in_water += #5 constant
execute unless block ~ ~ ~ water unless score @s in_water matches ..0 run scoreboard players operation @s in_water -= #1 constant

say yeah
