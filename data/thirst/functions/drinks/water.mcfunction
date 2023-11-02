

# if water bottle in hand set tag to water_pot_ih (ih = inhand)

execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}] run tag @s add water_pot_ih
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}}] run tag @s remove water_pot_ih