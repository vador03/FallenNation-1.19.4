item modify entity @s weapon.mainhand combat_additions:block_arrow
execute as @s[predicate=combat_additions:has_musket_charge,scores={gth.sneaking=1..,gth.musket_reload=0}] run function combat_additions:weapons/musket/initiate_reload
execute as @s[scores={gth.musket_reload=1..}] run function combat_additions:weapons/musket/reload
scoreboard players add @s gth.musket_reload 0