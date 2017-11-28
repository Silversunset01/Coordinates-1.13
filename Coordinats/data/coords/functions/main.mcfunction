execute as @a store result score x coords_location run data get entity @s Pos[0]
execute as @a store result score y coords_location run data get entity @s Pos[1]
execute as @a store result score z coords_location run data get entity @s Pos[2]
scoreboard players operation @e[name=pos,limit=1] coords_x = x coords_location
scoreboard players operation @e[name=pos,limit=1] coords_y = y coords_location
scoreboard players operation @e[name=pos,limit=1] coords_z = z coords_location
title @a actionbar ["",{"text":"X","color":"dark_aqua"},{"text":":","color":"black"},{"score":{"name":"@e[name=pos]","objective":"coords_x"}},{"text":" "},{"text":"Y","color":"dark_aqua"},{"text":":","color":"black"},{"score":{"name":"@e[name=pos]","objective":"coords_y"}},{"text":" "},{"text":"Z","color":"dark_aqua"},{"text":":","color":"black"},{"score":{"name":"@e[name=pos]","objective":"coords_z"}}]