execute if score Debug Registers matches 3.. run say Stack Reset Step


execute if score input Registers matches 1 run tp @s ~ ~-1 ~
execute if score input Registers matches 1.. run scoreboard players remove input Registers 1
execute if score input Registers matches 1.. positioned ~ ~-1 ~ unless block ~ ~ ~ grass_block run function asm:stack_reset_step
execute if score input Registers matches 1.. positioned ~ ~-1 ~ if block ~ ~ ~ grass_block positioned ~-10 ~64 ~ run function asm:stack_reset_step
