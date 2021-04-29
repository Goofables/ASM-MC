execute if score Debug Registers matches 1.. run say Command Load

execute positioned ~2 ~ ~ run function asm:set_target
execute as @e[tag=Target] run function asm:read_reg
tag @e remove Target

tp @e[tag=ram] 45 67 -20
execute as @e[tag=ram] at @s run function asm:stack_reset_step


scoreboard players set bits Registers 32
execute as @e[tag=ram] at @s positioned ~1 ~ ~ run function asm:pop_step
scoreboard players reset bits Registers

scoreboard players operation output Registers = input Registers

function asm:set_target
execute as @e[tag=Target] run function asm:save_reg
