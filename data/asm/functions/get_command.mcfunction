execute if score Debug Registers matches 2.. run say Checking command

function asm:stack_reset

execute if block ~ ~ ~ oak_planks positioned ~2 ~ ~ run function asm:inst_mov
execute if block ~ ~ ~ warped_planks positioned ~2 ~ ~ run function asm:inst_add
execute if block ~ ~ ~ crimson_planks positioned ~2 ~ ~ run function asm:inst_sub
execute if block ~ ~ ~ slime_block positioned ~2 ~ ~ run function asm:inst_jmp
execute if block ~ ~ ~ birch_planks positioned ~2 ~ ~ run function asm:inst_div
execute if block ~ ~ ~ jungle_planks positioned ~2 ~ ~ run function asm:inst_mul
execute if block ~ ~ ~ acacia_planks positioned ~2 ~ ~ run function asm:inst_inc
execute if block ~ ~ ~ dark_oak_planks positioned ~2 ~ ~ run function asm:inst_dec
execute if block ~ ~ ~ spruce_planks positioned ~2 ~ ~ run function asm:inst_cmp
execute if block ~ ~ ~ wet_sponge positioned ~2 ~ ~ run function asm:inst_push
execute if block ~ ~ ~ sponge positioned ~2 ~ ~ run function asm:inst_pop

execute if block ~ ~ ~ cobblestone positioned ~2 ~ ~ run function asm:inst_store
execute if block ~ ~ ~ andesite positioned ~2 ~ ~ run function asm:inst_load

execute if block ~ ~ ~ prismarine_bricks positioned ~2 ~ ~ run function asm:inst_call
execute if block ~ ~ ~ prismarine positioned ~2 ~ ~ run function asm:inst_ret

execute if block ~ ~ ~ chain_command_block positioned ~2 ~ ~ run function asm:inst_syscall

# JG
execute if block ~ ~ ~ stone_bricks if block 7 28 -20 white_concrete unless block 10 28 -20 white_concrete positioned ~2 ~ ~ run function asm:inst_jmp
# JL
execute if block ~ ~ ~ mossy_stone_bricks unless block 7 28 -20 white_concrete unless block 10 28 -20 white_concrete positioned ~2 ~ ~ run function asm:inst_jmp

# JGE
execute if block ~ ~ ~ chiseled_stone_bricks if block 7 28 -20 white_concrete positioned ~2 ~ ~ run function asm:inst_jmp
execute if block ~ ~ ~ chiseled_stone_bricks if block 10 28 -20 white_concrete positioned ~2 ~ ~ run function asm:inst_jmp
# JLE
execute if block ~ ~ ~ cracked_stone_bricks unless block 7 28 -20 white_concrete positioned ~2 ~ ~ run function asm:inst_jmp

# JE
execute if block ~ ~ ~ smooth_stone if block 10 28 -20 white_concrete positioned ~2 ~ ~ run function asm:inst_jmp
# JNE
execute if block ~ ~ ~ bricks unless block 10 28 -20 white_concrete positioned ~2 ~ ~ run function asm:inst_jmp


#execute positioned ~ ~-2 ~ unless block ~ ~ ~ air run function asm:get_command
#execute unless entity @s[tag=JMP] unless block ~ ~ ~ air run tp @s ~-2 ~-2 ~

execute unless entity @s[tag=JMP] as @e[tag=eip] run function asm:read_reg
execute unless entity @s[tag=JMP] run scoreboard players operation output Registers = input Registers
execute unless entity @s[tag=JMP] run scoreboard players add output Registers 2
execute unless entity @s[tag=JMP] as @e[tag=eip] run function asm:save_reg

function asm:stack_reset

setblock 0 28 -20 air

tag @e[tag=JMP] remove JMP
tag @e[tag=Target] remove Target
tag @e[tag=From] remove From
tag @e[tag=To] remove To
