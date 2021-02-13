execute as @a[scores={mod_level=1..,MOD=1}] run function modhandler:proofofmod

execute as @a[scores={mod_level=1..,MOD=..-1}] run function modhandler:unknowncommand
execute as @a[scores={mod_level=1..,MOD=2..}] run function modhandler:unknowncommand

function modhandler:reset