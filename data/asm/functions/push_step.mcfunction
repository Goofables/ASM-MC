execute if score Debug Registers matches 2.. run say Pushing regs

scoreboard players operation #rem Registers = output Registers
scoreboard players operation #rem Registers %= #2 Registers
execute if score #rem Registers matches 0 run setblock ~ ~ ~ minecraft:black_concrete
execute if score #rem Registers matches 1 run setblock ~ ~ ~ minecraft:white_concrete
scoreboard players operation output Registers /= #2 Registers
scoreboard players remove bits Registers 1
execute positioned ~-1 ~ ~ if block ~ ~ ~ air positioned ~8 ~1 ~ if score bits Registers matches 1.. run function asm:push_step
execute positioned ~-1 ~ ~ unless block ~ ~ ~ air if score bits Registers matches 1.. run function asm:push_step
