execute if score Debug Registers matches 3.. run say Saving reg step

scoreboard players operation #rem Registers = output Registers
scoreboard players operation #rem Registers %= #2 Registers
execute if score #rem Registers matches 0 run setblock ~ ~ ~ minecraft:black_concrete
execute if score #rem Registers matches 1 run setblock ~ ~ ~ minecraft:white_concrete
scoreboard players operation output Registers /= #2 Registers
scoreboard players remove bits Registers 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ minecraft:air if score bits Registers matches 1.. run function asm:save_reg_step
