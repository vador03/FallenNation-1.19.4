execute if entity @s[predicate=combat_additions:in_air] run execute as @e[type=!#non_living,type=!player,predicate=!combat_additions:no_armor,sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run function combat_additions:weapons/warhammer/effects
advancement revoke @s only combat_additions:warhammer/entity_hit