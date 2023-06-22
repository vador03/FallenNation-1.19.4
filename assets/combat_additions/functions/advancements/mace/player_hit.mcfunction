execute as @s[predicate=!combat_additions:strong_helmet] run function combat_additions:weapons/mace/strong_effects
execute as @s[predicate=combat_additions:strong_helmet] run function combat_additions:weapons/mace/effects
advancement revoke @s only combat_additions:mace/player_hit