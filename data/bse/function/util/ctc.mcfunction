data modify storage bse:main current set value {}
data modify storage bse:main current set from block ~ ~ ~
data remove storage bse:main current.x
data remove storage bse:main current.y
data remove storage bse:main current.z
data remove storage bse:main current.id
data remove storage bse:main current.Delay
data remove storage bse:main current.SpawnData.entity."bse:id"
data remove storage bse:main current.SpawnPotentials[].data.entity."bse:id"

data remove storage bse:main current.spawn_data.data.entity."bse:id"
data remove storage bse:main current.normal_config.spawn_potentials[].data.entity."bse:id"
data remove storage bse:main current.registered_players
data remove storage bse:main current.current_mobs
data remove storage bse:main current.cooldown_ends_at
data remove storage bse:main current.total_mobs_spawned
data remove storage bse:main current.ejecting_loot_table
data remove storage bse:main current.next_mob_spawns_at

#function bse:util/ctc/fix_tag