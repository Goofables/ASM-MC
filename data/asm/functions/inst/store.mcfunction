execute if score Debug Registers matches 1.. run say Command Store

execute if block ~2 ~ ~ #asm:reg positioned ~2 ~ ~ run function asm:set_target
execute if block ~2 ~ ~ #asm:reg as @e[tag=Target] run function asm:read_reg
tag @e remove Target

execute if block ~2 ~ ~ #asm:hex positioned ~2 ~ ~ run function asm:hex_in


scoreboard players operation output Registers = input Registers

function asm:set_target
execute as @e[tag=Target] run function asm:read_reg
#scoreboard players add input Registers 4

# ram tp
tp @e[tag=ram] 65 4 0
execute as @e[tag=ram] at @s run function asm:stack_reset_step

scoreboard players set bits Registers 32
execute as @e[tag=ram] at @s positioned ~8 ~ ~3 run function asm:inst/push_step
scoreboard players reset bits Registers
