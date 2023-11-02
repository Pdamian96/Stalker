



execute as @a run execute at @s run function bt:temp_effects_tick

# Adds in water logic
execute as @a run execute at @s run function bt:in_water

# math for how much player moved
execute as @a run scoreboard players set @s movement_total 0

execute as @a run scoreboard players operation @s movement_total = @s movement_s
execute as @a run scoreboard players operation @s movement_total += @s movement_w

execute as @a run scoreboard players set @s movement_s 0
execute as @a run scoreboard players set @s movement_w 0




execute as @a run execute unless score @s movement_total matches 0 at @s run function thirst:water_logic






schedule function main:loop_5s 5s 