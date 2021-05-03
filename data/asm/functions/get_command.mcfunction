execute if score Debug Registers matches 2.. run say Checking command

function asm:stack_reset

#particle minecraft:end_rod ~-2 ~0.5 ~ 0 0 0 0 1 force

execute if block ~ ~ ~ oak_planks positioned ~2 ~ ~ run function asm:inst/mov
execute if block ~ ~ ~ warped_planks positioned ~2 ~ ~ run function asm:inst/add
execute if block ~ ~ ~ crimson_planks positioned ~2 ~ ~ run function asm:inst/sub
execute if block ~ ~ ~ slime_block positioned ~2 ~ ~ run function asm:inst/jmp
execute if block ~ ~ ~ birch_planks positioned ~2 ~ ~ run function asm:inst/div
execute if block ~ ~ ~ jungle_planks positioned ~2 ~ ~ run function asm:inst/mul
execute if block ~ ~ ~ acacia_planks positioned ~2 ~ ~ run function asm:inst/inc
execute if block ~ ~ ~ dark_oak_planks positioned ~2 ~ ~ run function asm:inst/dec
execute if block ~ ~ ~ spruce_planks positioned ~2 ~ ~ run function asm:inst/cmp
execute if block ~ ~ ~ wet_sponge positioned ~2 ~ ~ run function asm:inst/push
execute if block ~ ~ ~ sponge positioned ~2 ~ ~ run function asm:inst/pop

execute if block ~ ~ ~ cobblestone positioned ~2 ~ ~ run function asm:inst/store
execute if block ~ ~ ~ andesite positioned ~2 ~ ~ run function asm:inst/load

execute if block ~ ~ ~ prismarine_bricks positioned ~2 ~ ~ run function asm:inst/call
execute if block ~ ~ ~ prismarine positioned ~2 ~ ~ run function asm:inst/ret

execute if block ~ ~ ~ chain_command_block positioned ~2 ~ ~ run function asm:inst/syscall
execute if block ~ ~ ~ packed_ice positioned ~2 ~ ~ run function asm:inst/int3

# JG
execute if block ~ ~ ~ stone_bricks if block 7 29 -20 white_concrete unless block 10 29 -20 white_concrete positioned ~2 ~ ~ run function asm:inst/jmp
# JL
execute if block ~ ~ ~ mossy_stone_bricks unless block 7 29 -20 white_concrete unless block 10 29 -20 white_concrete positioned ~2 ~ ~ run function asm:inst/jmp

# JGE
execute if block ~ ~ ~ chiseled_stone_bricks if block 7 29 -20 white_concrete positioned ~2 ~ ~ run function asm:inst/jmp
execute if block ~ ~ ~ chiseled_stone_bricks if block 10 29 -20 white_concrete positioned ~2 ~ ~ run function asm:inst/jmp
# JLE
execute if block ~ ~ ~ cracked_stone_bricks unless block 7 29 -20 white_concrete positioned ~2 ~ ~ run function asm:inst/jmp

# JE
execute if block ~ ~ ~ smooth_stone if block 10 29 -20 white_concrete positioned ~2 ~ ~ run function asm:inst/jmp
# JNE
execute if block ~ ~ ~ bricks unless block 10 29 -20 white_concrete positioned ~2 ~ ~ run function asm:inst/jmp


#execute positioned ~ ~-2 ~ unless block ~ ~ ~ air run function asm:get_command
#execute unless entity @s[tag=JMP] unless block ~ ~ ~ air run tp @s ~-2 ~-2 ~

execute unless entity @s[tag=JMP] as @e[tag=eip] run function asm:read_reg
execute unless entity @s[tag=JMP] run scoreboard players operation output Registers = input Registers
execute unless entity @s[tag=JMP] run scoreboard players add output Registers 2
execute unless entity @s[tag=JMP] as @e[tag=eip] run function asm:save_reg

function asm:stack_reset

setblock 0 29 -20 air

tag @e[tag=JMP] remove JMP
tag @e[tag=Target] remove Target
tag @e[tag=From] remove From
tag @e[tag=To] remove To

