# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.

def max_inject(*numbers)   
 	result = numbers.inject(0){ 
 		|acc=0,var| 
 		if var > acc 
 			acc = var 
 		end 
 		acc 
 	} 
 	return result  
end 
p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30
