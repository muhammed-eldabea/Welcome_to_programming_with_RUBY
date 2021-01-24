# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort
def bubble_sort(data=[]) 
	sorted_flag = false 
	while !sorted_flag 
		sorted_flag = true 
		(0...data.length-1 ).each do |indx| 
			if data[indx] >= data[indx+1] 
				data[indx] ,data[indx+1] = data[indx+1] , data[indx] 
				sorted_flag = false 	
			end 
		end 
	end 
	data 
end
def insert_sorting (data=[])
	(0...data.length).each do |i| 
		(i...data.length).each do |j| 
			if data[i] < data[j] 
				data[i] , data[j] = data[j],data[i] 
			end 
		end 
	end 
	data 
end 




p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10] 

