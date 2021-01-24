# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(st="") 
	res = ""
	counter = Hash.new(0) 
	st.each_char{|ch| counter[ch]+=1 } 
	counter.each {|k,v| res+= v.to_s+k.to_s } 
	res 
end 

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
