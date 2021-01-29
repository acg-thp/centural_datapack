execute if entity @p[scores={hack_diamond=250..},flag=!flag_as_xray] as @a[scores={hack_diamond=250..},tag=!flag_as_xray] run tag @s add flag_as_xray
execute if entity @p[scores={hack_diamond=250..},tag=!jail] as @a[scores={hack_diamond=250..},tag=!jail] run tag @s add jail
