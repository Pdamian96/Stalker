


execute store result score @s random run random value 1..3
execute if score @s random matches 1 run scoreboard players remove @s thirst 1
execute if score @s[tag=thirst] random matches 1 run scoreboard players remove @s thirst 2
execute if score @s[tag=t_db_w1] random matches 1 run scoreboard players remove @s thirst 1
execute if score @s[tag=t_db_w2] random matches 1 run scoreboard players remove @s thirst 1