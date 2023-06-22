effect give @s[scores={gth.horse_speed=1..}] minecraft:strength 1 3 true
effect give @s[scores={gth.horse_speed=40..}] minecraft:strength 1 4 true
effect give @s[scores={gth.horse_speed=50..}] minecraft:strength 1 5 true
effect give @s[scores={gth.horse_speed=60..}] minecraft:strength 1 6 true
scoreboard players add @e[type=#arrows,distance=..16] gth.age 1
execute as @s[predicate=combat_additions:has_unstoppable,scores={gth.horse_speed=1..}] run execute as @e[type=#arrows,distance=..2.5,nbt=!{inGround:true},scores={gth.age=2..}] at @s run function combat_additions:weapons/lance/kill_arrow