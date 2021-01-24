# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

#A, E, I, O, and U  

def only_vowels?(strd) 
	vowels = ["a" , "e" , "i" , "o" , "u"] 
	strd.each_char {
		|chara| 
		 if vowels.include?(chara) 
		 	next 
		 else 
		 	return false 
		 end 

	}

	return true 
end 



p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


