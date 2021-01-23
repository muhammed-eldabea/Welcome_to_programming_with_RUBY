str = "muhammed eldabea hashem tarkes" 
counter = Hash.new(0) 

str.each_char {
	|chars| 
	counter[chars] +=1 
}

print counter 
