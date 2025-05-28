execute if data storage bse:main current.SpawnData run function bse:util/gs
execute if data storage bse:main current.normal_config run function bse:util/gs/trial

#summoning item
execute at @s run summon item ~ ~ ~ {Tags:[bse.item.new],Item:{id:"minecraft:stone",count:1}}
execute at @s as @e[type=item,tag=bse.item.new,limit=1] run data modify entity @s Item set from storage bse:main item
tag @e[type=item,tag=bse.item.new,limit=1] remove bse.item.new