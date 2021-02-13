
#TODO decide how to handler this
execute unless score NewID teleport_id >= #Setup teleport_id run function teleport_handler:load/teleport_setup_load_handler
execute as @a[tag=TPEnabled] run function teleport_handler:enable/teleport_enable_handler