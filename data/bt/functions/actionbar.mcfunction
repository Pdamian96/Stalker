

data remove storage concat: first
data remove storage concat: second
data remove storage concat: result

execute if score @s temp_penalty_cold matches 0 if score @s temp_penalty_warm matches 0 run data modify storage concat: first set value " | "
execute if score @s temp_penalty_warm matches 1..10 run data modify storage concat: first set value " | "
execute if score @s temp_penalty_warm matches 11.. run data modify storage concat: first set value " | "

execute if score @s temp_penalty_cold matches -10..-1 run data modify storage concat: first set value " | "
execute if score @s temp_penalty_cold matches ..-11 run data modify storage concat: first set value " | "


data modify storage concat: second set value ' | '

function concat:concat




data modify storage concat: first set from storage concat: result

execute if score @s thirst matches ..0 run data modify storage concat: second set value ""

execute if score @s thirst matches 1..10 run data modify storage concat: second set value ""

execute if score @s thirst matches 11..20 run data modify storage concat: second set value ""

execute if score @s thirst matches 21..30 run data modify storage concat: second set value ""

execute if score @s thirst matches 31..40 run data modify storage concat: second set value ""

execute if score @s thirst matches 41..50 run data modify storage concat: second set value ""

execute if score @s thirst matches 51..60 run data modify storage concat: second set value ""

execute if score @s thirst matches 61..70 run data modify storage concat: second set value ""

execute if score @s thirst matches 71..80 run data modify storage concat: second set value ""

execute if score @s thirst matches 81..90 run data modify storage concat: second set value ""

execute if score @s thirst matches 91..100 run data modify storage concat: second set value ""


function concat:concat

title @a actionbar {"nbt":"result","storage":"concat:"}



