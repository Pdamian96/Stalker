

# Re-Runs every 5 Seconds


#
#   Do Effects on player for insulation (5s)
#
# Needs to be executed as player and at player
#
# Base Normal Insulation: 30
# Base Cold Insulation: -10
#
# Insulation needs to be higher than Temperature
#


# 
# Constant Points will get added by how much over the insulation is. The higher the more worse effects get added until you take damage.
#


# Adds 
scoreboard players operation @s insulation_effect += @s temp_penalty_warm
scoreboard players operation @s insulation_effect += @s temp_penalty_cold












# Reschedule Function
execute as @a run schedule function bt:temp_effects_tick 5s