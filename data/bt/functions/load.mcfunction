

function thirst:load


schedule clear main:loop_5s


# Start scheduled functions

function main:loop_5s





# Unicode Characters
#
#  - fire
#  - Ice
#  - tempscale warm
#  - tempscale cold
#








#|-------------------|
#| Setup Scoreboards |
#|-------------------|

#
scoreboard objectives add sleep_time minecraft.custom:sleep_in_bed
scoreboard objectives add time_since_sleep minecraft.custom:time_since_rest
scoreboard objectives add playtime minecraft.custom:play_time

scoreboard objectives add random dummy
scoreboard objectives add math dummy
scoreboard objectives add constant dummy

# Block Stuff
scoreboard objectives add campfires dummy
scoreboard objectives add furnace dummy

scoreboard objectives add in_water dummy


scoreboard objectives add body_temp dummy
scoreboard objectives add base_temp dummy
scoreboard objectives add time_temp dummy

scoreboard objectives add base_insulation_cold dummy
scoreboard objectives add total_insulation_cold dummy
scoreboard objectives add bonus_insulation_cold dummy


scoreboard objectives add base_insulation_warm dummy
scoreboard objectives add total_insulation_warm dummy
scoreboard objectives add bonus_insulation_warm dummy

scoreboard objectives add insulation_effect dummy

scoreboard objectives add temp_penalty_warm dummy
scoreboard objectives add temp_penalty_cold dummy





scoreboard objectives add time dummy


#
# Set everyones Insulation
# - IMPORTANT FOR LATER -
#
# Might need to be reloaded when new players join. So maybe move to setup/startup/difficulty file? 
#

scoreboard players set @a base_insulation_warm 30
scoreboard players set @a base_insulation_cold 10





# Constants

scoreboard players set #0 constant 0
scoreboard players set #1 constant 1
scoreboard players set #2 constant 2
scoreboard players set #5 constant 5
scoreboard players set #10 constant 10

say reloaded
