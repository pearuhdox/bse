setblock ~ ~ ~ acacia_leaves

execute if data storage bse:main spawners[{selected:1b}].data.normal_config run setblock ~ ~ ~ trial_spawner
execute if block ~ ~ ~ acacia_leaves unless data storage bse:main spawners[{selected:1b}].data.normal_config run setblock ~ ~ ~ spawner

data modify block ~ ~ ~ {} merge from storage bse:main spawners[{selected:1b}].data

execute if block ~ ~ ~ spawner run data modify block ~ ~ ~ SpawnData.entity."bse:id" set from storage bse:main spawners[{selected:1b}].id.int
execute if block ~ ~ ~ trial_spawner run data modify block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id" set from storage bse:main spawners[{selected:1b}].id.int