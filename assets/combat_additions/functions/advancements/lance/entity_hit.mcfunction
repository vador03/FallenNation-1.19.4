execute if entity @s[predicate=combat_additions:riding_entity] run execute as @e[type=!#non_living,type=!player,sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run function combat_additions:weapons/lance/effects
execute if entity @s[predicate=combat_additions:riding_entity] run advancement grant @s only minecraft:adventure/get_lanced
advancement grant @s[scores={gth.horse_speed=60..}] only minecraft:adventure/cavalry_charge
advancement revoke @s only combat_additions:lance/entity_hit