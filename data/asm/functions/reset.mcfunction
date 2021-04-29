execute if score Debug Registers matches 1.. run say Reset

# Registers
fill 2 28 -20 33 6 -20 black_concrete replace white_concrete

scoreboard players set output Registers 128
execute as @e[tag=esp] run function asm:save_reg
scoreboard players set output Registers 128
execute as @e[tag=ebp] run function asm:save_reg
scoreboard players set output Registers 0
execute as @e[tag=eip] run function asm:save_reg

tp @e[tag=ram] 45 67 -20

# Pointer
#tp @e[tag=Pointer] -16 36 -20 -90 0

# Memory
fill 36 67 -20 53 4 -20 black_concrete replace white_concrete

function asm:stack_reset

scoreboard players set Hang Registers -1
scoreboard players reset * input

tag @e remove Target
tag @e remove From
tag @e remove To
