execute at @e[name="pos",limit=1] run fill ~ ~ ~ ~ ~2 ~ air
kill @e[name="pos",limit=1]
scoreboard objectives add coords_x
scoreboard objectives add coords_y
scoreboard objectives add coords_z
scoreboard objectives add coords_location