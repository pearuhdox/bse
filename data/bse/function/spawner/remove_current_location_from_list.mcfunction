#getting id and selecting it
scoreboard players set id= bse.main -1
execute if block ~ ~ ~ spawner store result score id= bse.main run data get block ~ ~ ~ SpawnData.entity."bse:id"
execute if block ~ ~ ~ trial_spawner store result score id= bse.main run data get block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"

execute if block ~ ~ ~ spawner run data remove block ~ ~ ~ SpawnData.entity."bse:id"
execute if block ~ ~ ~ trial_spawner run data remove block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"

execute if entity @s[tag=bse.marker] run scoreboard players operation id= bse.main = @s bse.id
execute unless score id= bse.main matches -1 run function bse:util/si
execute unless score id= bse.main matches -1 run function bse:util/gpa
execute unless score id= bse.main matches -1 run function bse:util/rcp

#new code - added code to set the cloud's id back to -1 when you specifically remove a location from the list
execute if entity @s[tag=bse.attack] as @e[type=area_effect_cloud,tag=bse.marker,limit=1,sort=nearest] at @s run scoreboard players set @s bse.id -1
tag @s remove bse.attack
