execute if block ~ ~ ~ spawner store result score id= bse.temp run data get block ~ ~ ~ SpawnData.entity."bse:id"
execute if block ~ ~ ~ trial_spawner store result score id= bse.temp run data get block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"

execute if score id= bse.temp = id= bse.main run scoreboard players set update= bse.temp 1