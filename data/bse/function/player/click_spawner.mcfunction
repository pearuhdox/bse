tag @s remove bse.click

execute if block ~ ~ ~ spawner store result score has_bse_id= bse.temp if data block ~ ~ ~ SpawnData.entity."bse:id"
execute if block ~ ~ ~ trial_spawner store result score has_bse_id= bse.temp if data block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"

execute if block ~ ~ ~ spawner if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 0 store result score id= bse.main run data get block ~ ~ ~ SpawnData.entity."bse:id"
execute if block ~ ~ ~ trial_spawner if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 0 store result score id= bse.main run data get block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"

execute if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 0 run function bse:spawner/give
execute if score has_bse_id= bse.temp matches 1 if score alt= bse.temp matches 1 run function bse:spawner/update

execute if score has_bse_id= bse.temp matches 0 run function bse:spawner/register