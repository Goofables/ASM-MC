execute if score Debug Registers matches 3.. run say Popping value

scoreboard players operation input Registers *= #2 Registers
#execute if block ~ ~ ~ black_concrete run scoreboard players add input Registers 0
execute if block ~ ~ ~ white_concrete run scoreboard players add input Registers 1

scoreboard players remove bits Registers 1
execute positioned ~1 ~ ~ if block ~ ~ ~ air positioned ~-8 ~ ~1 if score bits Registers matches 1.. run function asm:inst/pop_step
execute positioned ~1 ~ ~ unless block ~ ~ ~ air if score bits Registers matches 1.. run function asm:inst/pop_step

particle minecraft:barrier ~ ~ ~ 0 0 0 1 1 force
