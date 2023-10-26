#
#   Get Base temp of current biome
#
# Needs to be executed as player and at player
#
# Base Normal Insulation: 30
# Base Cold Insulation: -10
#
# Insulation needs to be higher than Temperature
#
# 10 over 
#

#----
# Get Base Temp of local Biome
#----

# Hot Biomes
execute if biome ~ ~ ~ #is_badlands run scoreboard players set @s base_temp 30
execute if biome ~ ~ ~ desert run scoreboard players set @s base_temp 30

execute if biome ~ ~ ~ #is_savanna run scoreboard players set @s base_temp 20
execute if biome ~ ~ ~ #is_jungle run scoreboard players set @s base_temp 20

#Medium

execute if biome ~ ~ ~ minecraft:plains run scoreboard players set @s base_temp 10
execute if biome ~ ~ ~ #is_forest run scoreboard players set @s base_temp 10
execute if biome ~ ~ ~ minecraft:beach run scoreboard players set @s base_temp 10


#Cold

execute if biome ~ ~ ~ #is_ocean run scoreboard players set @s base_temp 5
execute if biome ~ ~ ~ #is_deep_ocean run scoreboard players set @s base_temp 5
execute if biome ~ ~ ~ minecraft:river run scoreboard players set @s base_temp 5

execute if biome ~ ~ ~ snowy_beach run scoreboard players set @s base_temp -5
execute if biome ~ ~ ~ snowy_plains run scoreboard players set @s base_temp -5
execute if biome ~ ~ ~ snowy_slopes run scoreboard players set @s base_temp -5
execute if biome ~ ~ ~ snowy_taiga run scoreboard players set @s base_temp -5


#----
# Time of Day Temp adder
#----

execute if score time time matches 0..500 run scoreboard players set @s time_temp 5
execute if score time time matches 501..2000 run scoreboard players set @s time_temp 10
execute if score time time matches 2001..5000 run scoreboard players set @s time_temp 15
execute if score time time matches 5001..7000 run scoreboard players set @s time_temp 20
execute if score time time matches 7001..10000 run scoreboard players set @s time_temp 15
execute if score time time matches 10001..11500 run scoreboard players set @s time_temp 10
execute if score time time matches 11501..12000 run scoreboard players set @s time_temp 5

execute if score time time matches 12001..12500 run scoreboard players set @s time_temp -5
execute if score time time matches 12501..15000 run scoreboard players set @s time_temp -10
execute if score time time matches 15001..16000 run scoreboard players set @s time_temp -15
execute if score time time matches 17001..20000 run scoreboard players set @s time_temp -20
execute if score time time matches 21001..21500 run scoreboard players set @s time_temp -15
execute if score time time matches 21501..23500 run scoreboard players set @s time_temp -10
execute if score time time matches 23501..24000 run scoreboard players set @s time_temp -5


#
# Other Bonuses
#
# Planned: Armor , Fire
#
#
# Reset Bonus

scoreboard players set @s bonus_insulation_cold 0
scoreboard players set @s bonus_insulation_warm 0

# Fire Bonus
execute store result score @s campfires run clone ~-3 ~-2 ~-3 ~3 ~2 ~3 ~-3 ~-2 ~-3 filtered campfire[lit=true] force



# Add stuff together



scoreboard players set @s body_temp 0
scoreboard players operation @s body_temp += @s base_temp
scoreboard players operation @s body_temp += @s time_temp



# Calc Insulation

scoreboard players operation @s total_insulation_cold = @s base_insulation_cold
scoreboard players operation @s total_insulation_warm = @s base_insulation_warm

# Insulation Rest Calculations


execute if score @s body_temp > #0 constant run scoreboard players operation @s temp_penalty_warm = @s body_temp
execute if score @s body_temp > #0 constant run scoreboard players operation @s temp_penalty_warm -= @s total_insulation_warm
execute if score @s temp_penalty_warm matches ..0 run scoreboard players set @s temp_penalty_warm 0
execute if score @s temp_penalty_warm matches 1.. run function bt:temp_effects


execute if score @s body_temp <= #0 constant run scoreboard players operation @s temp_penalty_cold = @s body_temp
execute if score @s body_temp <= #0 constant run scoreboard players operation @s temp_penalty_cold += @s total_insulation_cold
execute if score @s temp_penalty_cold matches 0.. run scoreboard players set @s temp_penalty_cold 0
execute if score @s temp_penalty_cold matches ..1 run function bt:temp_effects





