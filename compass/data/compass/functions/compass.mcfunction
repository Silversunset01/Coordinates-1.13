execute as @a store result score @s compass_x run data get entity @s Pos[0]
execute as @a store result score @s compass_y run data get entity @s Pos[1]
execute as @a store result score @s compass_z run data get entity @s Pos[2]
execute as @a store result score @s compass_angle run data get entity @s Rotation[0]

#
# transform angle from [-180, 180) to (0, 7)
#
scoreboard players operation @a compass_angle += 540 compass_c
scoreboard players operation @a compass_angle %= 360 compass_c

execute as @a store result score @s compass_angle_s run scoreboard players get @s compass_angle

scoreboard players operation @a compass_angle_s *= 2 compass_c
scoreboard players operation @a compass_angle_s += 45 compass_c
scoreboard players operation @a compass_angle_s /= 90 compass_c
scoreboard players operation @a compass_angle_s %= 8 compass_c

title @a[scores={compass_angle_s=0}] actionbar [{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_x"},"color":"white"},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_y"},"color":"white"},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_z"},"color":"white"},{"text":"; Facing:","color":"gold","bold":"true"},{"text":" N","color":"white"}]
title @a[scores={compass_angle_s=1}] actionbar [{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_x"},"color":"white"},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_y"},"color":"white"},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_z"},"color":"white"},{"text":"; Facing:","color":"gold","bold":"true"},{"text":" NE","color":"white"}]
title @a[scores={compass_angle_s=2}] actionbar [{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_x"},"color":"white"},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_y"},"color":"white"},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_z"},"color":"white"},{"text":"; Facing:","color":"gold","bold":"true"},{"text":" E","color":"white"}]
title @a[scores={compass_angle_s=3}] actionbar [{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_x"},"color":"white"},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_y"},"color":"white"},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_z"},"color":"white"},{"text":"; Facing:","color":"gold","bold":"true"},{"text":" SE","color":"white"}]
title @a[scores={compass_angle_s=4}] actionbar [{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_x"},"color":"white"},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_y"},"color":"white"},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_z"},"color":"white"},{"text":"; Facing:","color":"gold","bold":"true"},{"text":" S","color":"white"}]
title @a[scores={compass_angle_s=5}] actionbar [{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_x"},"color":"white"},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_y"},"color":"white"},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_z"},"color":"white"},{"text":"; Facing:","color":"gold","bold":"true"},{"text":" SW","color":"white"}]
title @a[scores={compass_angle_s=6}] actionbar [{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_x"},"color":"white"},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_y"},"color":"white"},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_z"},"color":"white"},{"text":"; Facing:","color":"gold","bold":"true"},{"text":" W","color":"white"}]
title @a[scores={compass_angle_s=7}] actionbar [{"text":"X:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_x"},"color":"white"},{"text":" Y:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_y"},"color":"white"},{"text":" Z:","color":"gold","bold":"true"},{"score":{"name":"*","objective":"compass_z"},"color":"white"},{"text":"; Facing:","color":"gold","bold":"true"},{"text":" NW","color":"white"}]
