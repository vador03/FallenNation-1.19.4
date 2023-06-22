execute store result score @s gth.arrow_damage run data get entity @s damage 8
execute store result entity @s damage float 0.1 run scoreboard players get @s gth.arrow_damage
tag @s add gth.longbow_arrow