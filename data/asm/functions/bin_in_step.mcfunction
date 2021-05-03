execute if score Debug Registers matches 3.. run say Bin In Step

scoreboard players operation input Registers *= #2 Registers
#execute if block ~ ~ ~ quartz_pillar run scoreboard players add input Registers 0
execute if block ~ ~ ~ white_concrete run scoreboard players add input Registers 1

scoreboard players remove bits Registers 1
execute positioned ~1 ~ ~ if block ~ ~ ~ #asm:bin if score bits Registers matches 1.. run function asm:bin_in_step
