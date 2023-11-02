#
#   Do Effects on player for insulation
#
# Needs to be executed as player and at player
#
# Base Normal Insulation: 30
# Base Cold Insulation: -10
#
# Insulation needs to be higher than Temperature
#


#
# These effects are passive effect that instantly happen when the insulation is not sufficent.
# 
# Constant Points will get added by how much over the insulation is. The higher the more worse effects get added until you take damage.
#
#

#-----
# Warm Effects
#-----


#
# 5 over - More thirst 
#

execute if score @s temp_penalty_warm matches 5..9 run tag @s add t_db_w1
execute if score @s temp_penalty_warm matches 5..9 run tag @s remove t_db_w2
#t_db_w1 = thirst_debuff_water1


# ///Thirst system not in place///

#
# 10 over warm - More Thirst
#
execute if score @s temp_penalty_warm matches 10.. run tag @s add t_db_w2
execute if score @s temp_penalty_warm matches 10.. run tag @s remove t_db_w1

# ///Thirst system still not in place///








