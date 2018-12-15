execute as @a store result score @s coords_x run data get entity @s Pos[0]
execute as @a store result score @s coords_y run data get entity @s Pos[1]
execute as @a store result score @s coords_z run data get entity @s Pos[2]
execute if entity @a[scores={coords_run=1..1}] run title @a actionbar ["",{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"coords_x"}},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"coords_y"}},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"coords_z"}}]