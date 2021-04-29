execute if score Debug Registers matches 3.. run say Syscall Read Tick

execute store success score input Registers run scoreboard players enable @s input
execute if score input Registers matches 1 run scoreboard players set Hang Registers -1
execute if score input Registers matches 1 run scoreboard players operation output Registers = @s input
execute if score input Registers matches 1 as @e[tag=eax] run function asm:save_reg