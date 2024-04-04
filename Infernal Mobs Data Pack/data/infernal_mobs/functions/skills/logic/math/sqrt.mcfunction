#******************* Skills --> Logic --> Math --> Sqrt *******************


#------- Initializes the values for the sqrt testing -------
# math.sqrt_value = 1;
# math.sqrt_result = 1;
scoreboard players set $Math _math.sqrt.value 1
scoreboard players set $Math _math.sqrt.result 1

#------- Recursively tries to find the sqrt -------
# while (math.sqrt_value <= math.sqrt_input):
#   math.sqrt_loop();
execute if score $Math _math.sqrt.value <= $Math _math.sqrt.input run function infernal_mobs:skills/logic/math/sqrt_loop

#------- Calculates the final result of the sqrt of the input -------
# math.sqrt_result--;
scoreboard players operation $Math _math.sqrt.result -= $Constants _const.1
