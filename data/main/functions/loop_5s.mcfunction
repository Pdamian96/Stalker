



execute as @a run execute at @s run function bt:temp_effects_tick

# Adds in water logic
execute as @a run execute at @s run function bt:in_water

execute as @a run execute at @s run function thirst:water_logic



schedule function main:loop_5s 5s 