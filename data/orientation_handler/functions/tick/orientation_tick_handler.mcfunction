execute as @a[scores={POS=1..}] run function orientation_handler:pos
execute as @a[scores={POS=..-1}] run function orientation_handler:pos
function orientation_handler:reset