
# tick called from bt:tick


execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}] run tag @s add water_pot_ih

execute if score @s potion.used matches 1 if entity @s[tag=water_pot_ih] run scoreboard players add @s thirst 10

scoreboard players set @s potion.used 0
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}] run tag @s remove water_pot_ih

execute if score @s thirst matches 101.. run scoreboard players set @s thirst 100
execute if score @s thirst matches ..-1 run scoreboard players set @s thirst 0