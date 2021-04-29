execute if score Debug Registers matches 2.. run say Hex In Step

scoreboard players operation input Registers *= #16 Registers
#execute if block ~ ~ ~ black_concrete run scoreboard players add input Registers 0
execute if block ~ ~ ~ white_concrete run scoreboard players add input Registers 1
execute if block ~ ~ ~ orange_concrete run scoreboard players add input Registers 2
execute if block ~ ~ ~ magenta_concrete run scoreboard players add input Registers 3
execute if block ~ ~ ~ light_blue_concrete run scoreboard players add input Registers 4
execute if block ~ ~ ~ yellow_concrete run scoreboard players add input Registers 5
execute if block ~ ~ ~ lime_concrete run scoreboard players add input Registers 6
execute if block ~ ~ ~ pink_concrete run scoreboard players add input Registers 7
execute if block ~ ~ ~ gray_concrete run scoreboard players add input Registers 8
execute if block ~ ~ ~ light_gray_concrete run scoreboard players add input Registers 9
execute if block ~ ~ ~ cyan_concrete run scoreboard players add input Registers 10
execute if block ~ ~ ~ purple_concrete run scoreboard players add input Registers 11
execute if block ~ ~ ~ blue_concrete run scoreboard players add input Registers 12
execute if block ~ ~ ~ brown_concrete run scoreboard players add input Registers 13
execute if block ~ ~ ~ green_concrete run scoreboard players add input Registers 14
execute if block ~ ~ ~ red_concrete run scoreboard players add input Registers 15

execute positioned ~1 ~ ~ if block ~ ~ ~ #asm:hex run function asm:hex_in_step