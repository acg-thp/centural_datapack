
tellraw @a "Removing uuid scoreboard objectives"
scoreboard objectives remove uuid_stack_zero
scoreboard objectives remove uuid_stack_one
scoreboard objectives remove uuid_stack_two
scoreboard objectives remove uuid_stack_three

scoreboard objectives add uuid_stack_zero dummy "Contains the first integer (Index starts at zero) of a UUID"
scoreboard objectives add uuid_stack_one dummy "Contains the second integer (Index starts at zero) of a UUID"
scoreboard objectives add uuid_stack_two dummy "Contains the third integer (Index starts at zero) of a UUID"
scoreboard objectives add uuid_stack_three dummy "Contains the fourt integer (Index starts at zero) of a UUID"
