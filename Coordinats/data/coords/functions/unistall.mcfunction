execute at @e[name="coords_pos",limit=1] run fill ~ ~ ~ ~ ~2 ~ air
kill @e[name="coords_pos",limit=1]
scoreboard objectives remove coords_x
scoreboard objectives remove coords_y
scoreboard objectives remove coords_z
