execute store result score @s gth.x1 run data get entity @s Pos[0] 1000
execute store result score @s gth.y1 run data get entity @s Pos[1] 1000
execute store result score @s gth.z1 run data get entity @s Pos[2] 1000
tp @s ^ ^ ^0.1
execute store result score @s gth.x2 run data get entity @s Pos[0] 1000
execute store result score @s gth.y2 run data get entity @s Pos[1] 1000
execute store result score @s gth.z2 run data get entity @s Pos[2] 1000
execute store result entity @s Motion[0] double 0.06 run scoreboard players operation @s gth.x2 -= @s gth.x1
execute store result entity @s Motion[1] double 0.06 run scoreboard players operation @s gth.y2 -= @s gth.y1
execute store result entity @s Motion[2] double 0.06 run scoreboard players operation @s gth.z2 -= @s gth.z1
data modify entity @s PierceLevel set value 1
data modify entity @s damage set value 3.5
data merge entity @s {pickup:2b}
tag @s add gth.motion_added