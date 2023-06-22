execute if block ~ ~ ~ #non_solid run particle minecraft:crit ~ ~ ~ 0 0 0 0.1 1
execute positioned ~ ~-1 ~ as @e[type=!#minecraft:non_living,type=!player,distance=..0.75] run function combat_additions:weapons/partisan/effects
execute positioned ~ ~-1 ~ as @e[type=!player,distance=..0.75] run function combat_additions:weapons/partisan/player_effects
execute positioned ~ ~-1 ~ if entity @e[type=!#minecraft:non_living,distance=..0.75] run tag @s add gth.partisan_hit
execute unless block ~ ~ ~ #non_solid run tag @s add gth.partisan_hit