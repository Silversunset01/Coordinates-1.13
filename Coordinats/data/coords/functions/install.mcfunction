execute at @s run setblock ~ ~ ~ minecraft:repeating_command_block{Command:"function coords:main"} replace
execute at @s run setblock ~ ~1 ~ minecraft:lever[face=floor,powered=true] replace
execute at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:"pos"}
gamerule commandBlockOutput false
scoreboard objectives add coords_x dummy
scoreboard objectives add coords_y dummy
scoreboard objectives add coords_z dummy
scoreboard objectives add coords_location dummy

