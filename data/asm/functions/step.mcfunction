execute if score Debug Registers matches 2.. run say Ticking

execute as @e[tag=Pointer] at @s positioned ~2 ~ ~ unless block ~ ~ ~ air unless score Hang Registers matches 0.. run function asm:get_command
execute if score Hang Registers matches 0 as @a run function asm:syscalls/read_tick
