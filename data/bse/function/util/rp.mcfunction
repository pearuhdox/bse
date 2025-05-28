execute if block ~ ~ ~ spawner run data modify block ~ ~ ~ SpawnData.entity."bse:id" set from storage bse:main spawners[{selected:1b}].id.int
execute if block ~ ~ ~ trial_spawner run data modify block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id" set from storage bse:main spawners[{selected:1b}].id.int

function bse:util/gpa
data modify storage bse:main spawners[{selected:1b}].positions append from storage bse:temp pos