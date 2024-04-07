#******************* Skills --> Logic --> Math --> Sqrt Loop *******************


#------- Gets the current sqrt result -------
# math.sqrt_result++;
scoreboard players operation $Math _math.sqrt.result += $Constants _const.1

#------- Calculates the nearest value to the input number -------
# math.sqrt_value = math.sqrt_result * math.sqrt_result;
scoreboard players operation $Math _math.sqrt.result_power_2 = $Math _math.sqrt.result
scoreboard players operation $Math _math.sqrt.result_power_2 *= $Math _math.sqrt.result
scoreboard players operation $Math _math.sqrt.value = $Math _math.sqrt.result_power_2

#------- Recursively tries to find the sqrt -------
# while (math.sqrt_value <= math.sqrt_input):
#   sqrt_loop();
execute if score $Math _math.sqrt.value <= $Math _math.sqrt.input run function infernal_mobs:skills/logic/math/sqrt_loop
