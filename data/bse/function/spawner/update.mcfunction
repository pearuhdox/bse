execute if block ~ ~ ~ spawner store result score id= bse.main run data get block ~ ~ ~ SpawnData.entity."bse:id"
execute if block ~ ~ ~ trial_spawner store result score id= bse.main run data get block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"
function bse:util/si
function bse:util/ctc
data modify storage bse:main spawners[{selected:1b}].data set from storage bse:main current
function bse:util/us