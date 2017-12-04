execute as @a store result score @s coords_x run data get entity @s Pos[0]
execute as @a store result score @s coords_y run data get entity @s Pos[1]
execute as @a store result score @s coords_z run data get entity @s Pos[2]
title @a actionbar ["",{"text":"X","color":"dark_aqua"},{"text":":","color":"black"},{"score":{"name":"*","objective":"coords_x"}},{"text":" "},{"text":"Y","color":"dark_aqua"},{"text":":","color":"black"},{"score":{"name":"*","objective":"coords_y"}},{"text":" "},{"text":"Z","color":"dark_aqua"},{"text":":","color":"black"},{"score":{"name":"*","objective":"coords_z"}}]