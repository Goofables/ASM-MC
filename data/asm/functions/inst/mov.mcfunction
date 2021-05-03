execute if score Debug Registers matches 1.. run say Command MOV

function asm:set_target
tag @e[tag=Target] add To

execute if block ~2 ~ ~ #asm:hex positioned ~2 ~ ~ run function asm:hex_in

execute if block ~2 ~ ~ #asm:reg positioned ~2 ~ ~ run function asm:set_target
execute if block ~2 ~ ~ #asm:reg as @e[tag=Target,tag=!To] run function asm:read_reg

scoreboard players operation output Registers = input Registers

execute as @e[tag=To] run function asm:save_reg
