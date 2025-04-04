# TOTAL = CURRENT_REPLENISH_AMOUNT
# ONE PERCENT = TOTAL / 100
# X PERCENT = ONE PERCENT * X
scoreboard players set #juggernaut regress_amount 0
execute if score #juggernaut game_state matches 1 run scoreboard players operation #juggernaut regress_amount = @n[type=armor_stand,tag=replenishment.station] replenishment_done
scoreboard players operation #juggernaut regress_amount /= #100 var
$scoreboard players operation #juggernaut regress_amount *= #$(percentage) var

execute if score #juggernaut game_state matches 1 run scoreboard players operation @n[type=armor_stand,tag=replenishment.station] replenishment_done -= #juggernaut regress_amount