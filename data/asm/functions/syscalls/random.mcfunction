execute if score Debug Registers matches 1.. run say Syscall Random

summon armor_stand 0 0 0 {Invulnerable:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["asm","random","1"]}
summon armor_stand 0 0 0 {Invulnerable:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["asm","random","0"]}

scoreboard players set input Registers 0

scoreboard players set bits Registers 32
function asm:syscalls/random_step
scoreboard players reset bits Registers

kill @e[tag=random]