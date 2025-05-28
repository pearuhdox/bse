#getting status
scoreboard players set has_bse_id= bse.temp 0
scoreboard players set spawner= bse.temp 0

execute if block ~ ~ ~ spawner store result score spawner= bse.temp if block ~ ~ ~ spawner
execute if block ~ ~ ~ spawner store result score has_bse_id= bse.temp if data block ~ ~ ~ SpawnData.entity."bse:id"
execute if block ~ ~ ~ spawner if score has_bse_id= bse.temp matches 1 store result score bse_id= bse.temp run data get block ~ ~ ~ SpawnData.entity."bse:id"

execute if block ~ ~ ~ trial_spawner store result score spawner= bse.temp if block ~ ~ ~ trial_spawner
execute if block ~ ~ ~ trial_spawner store result score has_bse_id= bse.temp if data block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"
execute if block ~ ~ ~ trial_spawner if score has_bse_id= bse.temp matches 1 store result score bse_id= bse.temp run data get block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id"

#Catch condition for Trial Spawners and eventual moving to Spawn Potentials
execute if score spawner= bse.temp matches 1 if block ~ ~ ~ trial_spawner if score has_bse_id= bse.temp matches 0 if score @s bse.id matches 1.. run scoreboard players operation bse_id= bse.temp = @s bse.id
execute if score spawner= bse.temp matches 1 if block ~ ~ ~ trial_spawner if score has_bse_id= bse.temp matches 0 if score @s bse.id matches 1.. store result block ~ ~ ~ normal_config.spawn_potentials[0].data.entity."bse:id" int 1 run scoreboard players get bse_id= bse.temp
execute if score spawner= bse.temp matches 1 if block ~ ~ ~ trial_spawner if score has_bse_id= bse.temp matches 0 if score @s bse.id matches 1.. run scoreboard players set has_bse_id= bse.temp 1

#updating name
execute if score spawner= bse.temp matches 0 run data modify entity @s CustomName set value {"text":"No spawner available!","color":"red"}
execute if score spawner= bse.temp matches 1 if score has_bse_id= bse.temp matches 0 run data modify entity @s CustomName set value {"text":"Unregistered spawner","color":"red"}
execute if score has_bse_id= bse.temp matches 1 run data modify block 29999999 1 6452069 front_text.messages[0] set value {"translate":"Spawner ID: %s","with":[{"score":{"objective":"bse.temp","name":"bse_id="}}],"color":"aqua"}
execute if score has_bse_id= bse.temp matches 1 run data modify entity @s CustomName set from block 29999999 1 6452069 front_text.messages[0]

#updating id score for tracking
execute if score has_bse_id= bse.temp matches 1 run scoreboard players operation @s bse.id = bse_id= bse.temp