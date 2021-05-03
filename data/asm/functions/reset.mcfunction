execute if score Debug Registers matches 1.. run say Reset

# Registers
fill 2 29 -20 33 7 -20 black_concrete replace white_concrete

scoreboard players set output Registers 512
execute as @e[tag=esp] run function asm:save_reg
scoreboard players set output Registers 512
execute as @e[tag=ebp] run function asm:save_reg
scoreboard players set output Registers 0
execute as @e[tag=eip] run function asm:save_reg


# ram tp
tp @e[tag=ram] 65 4 0


# Ram
fill 36 4 0 73 4 127 minecraft:black_concrete replace minecraft:white_concrete

function asm:stack_reset

scoreboard players set Hang Registers -1
scoreboard players reset * input

tag @e remove Target
tag @e remove From
tag @e remove To
