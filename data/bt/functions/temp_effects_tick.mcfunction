

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

# slowly return to normal temp if no penalty is present

execute if score @s temp_penalty_warm matches 0 if score @s insulation_effect matches 0.. run scoreboard players remove @s insulation_effect 15
execute if score @s temp_penalty_cold matches 0 if score @s insulation_effect matches ..0 run scoreboard players add @s insulation_effect 15




# if player too hot do rare damage
execute if score @s temp_penalty_warm matches 10.. run execute store result score @s random run random value 1..5
execute if score @s temp_penalty_warm matches 10.. run execute if score @s random matches 1 run damage @s 0.5 cramming






# Reschedule Function
execute as @a run schedule function bt:temp_effects_tick 5s