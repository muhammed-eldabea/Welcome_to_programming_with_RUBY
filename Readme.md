# Ruby Notes

## NOTES :

- Ruby have a style like python
- every syntax end with **"end "**
- some how it is look like c when dealing with string and iterateable data
- operation and  method in  Ruby will automatically return the last operation result

    

_________________________________________________________________________________________ 

**Method definetion  in Ruby**  
 

```ruby
def method_name (parameter) 

#code 

end  
```

_________________________________________________________________________________________ 

Function that return a value : 

```ruby
def calc_average(values_list) 
	return value_list.sum / value_list.legnth 
end 
```

_________________________________________________________________________________________ 

Conditiotion on Ruby 

```ruby
if condition 
	#condiotion execution 
else 
	# code 
end  
```

_________________________________________________________________________________________ 

Loops in Ruby 

```ruby
def funct  
	 i = 0 
	 while i <5 
			puts i 
			i++
	 end 
end  
```

 _________________________________________________________________________________________ 

**next and  break**  : 

```ruby
while condidtion 
	if condition 
			next 
	end 
end 
#next her is used to skipe a one step
 
```

```ruby
while condidtion 
	if condition 
			break  
	end 
end 
#next her is used to break the cuurent loop
```

_________________________________________________________________________________________ 

**array** 

```ruby
array = ["a" , "b" , "c" ]  

#note the difrrence between **puts** and **print** 

puts array  >> outut   >> a b c in every line 
print array >>  output >>  ["a" , "b" , "c" ]
```

_________________________________________________________________________________________ 

**add element the the array** 

 

```ruby
letter = ["a" , "b" , "c" ] 
letter << "d"    #this is called shovel that add element the the end 
print letter    >> output ["a" , "b" , "c" ,"d"]  
```

*we can change the data in the array using its index*  

_________________________________________________________________________________________ 

**method with array**  

```ruby
array.push("" , "") #  will push the element to array at the end  
array.pop()   # remove the last element and return the element that it remove 
array.unshift("element") #wil add the element to the first of the array 
array.shift #will remove the first element of the array 
array.index("element") #return the index of element 
array.include?("element") #return true or false depending on the presentance of elenemnt  
array.revrese() #revrese element in the array  it it have *no effect on the real data* by it make a copy of it 
array.reverse! #*revrese the real array*  
array[strinx..endinx] #get the element bewtween *without include the end* 
array[strinx...endinx] #get the element bewtween *with include the end*  
string.split()  #split the element in string(characters) to elemnt in an array \
array_of_chart/string.join #return a string with all element in the array 
```

_________________________________________________________________________________________ 

**Manipulation**

```ruby
# add element(s) to the end using push
people = ["Tommy", "Bex"]
p people.push("Maurice", "Abby")      # prints ["Tommy", "Bex", "Maurice", "Abby"]
p people                              # prints ["Tommy", "Bex", "Maurice", "Abby"]

# remove the last element using pop
people = ["Tommy", "Bex"]
p people.pop()                        # prints "Bex"
p people                              # prints ["Tommy"]

# add elements(s) to the front using unshift
people = ["Tommy", "Bex"]
p people.unshift("Oscar", "Matthias") # prints ["Oscar", "Matthias", "Tommy", "Bex"]
p people                              # prints ["Oscar", "Matthias", "Tommy", "Bex"]

# remove the first element using shift
people = ["Tommy", "Bex"]
p people.shift()                      # prints "Tommy"
p people                              # prints ["Bex"] 

# check if an element exists in an array using include?
people = ["Tommy", "Bex", "Abby", "Maurice"]
p people.include?("Abby")   # prints true
p people.include?("Mashu")  # prints false

# find the index of an element in an array using index
people = ["Tommy", "Bex", "Abby", "Maurice"]
p people.index("Abby")      # prints 2
p people.index("Maurice")   # prints 3
p people.index("Oscar")     # prints nil
p people.index("Danny")     # prints nil

# convert a string into an array using split
sentence = "Hey Programmers! What's up."
p sentence.split(" ")      # prints ["Hey", "Programmers!", "What's", "up."]
p sentence.split("a")      # prints ["Hey Progr", "mmers! Wh", "t's up."]
p sentence.split("gram")   # prints ["Hey Pro", "mers! What's up."]
p sentence                 # prints "Hey Programmers! What's up."

# convert an array into a string using join
words = ["Rubies", "are", "red"]
p words.join(" ")          # prints "Rubies are red"
p words.join("-")          # prints "Rubies-are-red"
p words.join("HI")         # prints "RubiesHIareHIred"
p words                    # prints ["Rubies", "are", "red"]
```

_________________________________________________________________________________________ 

## Enumeration

 

```ruby
array.each {        #block of code 
|elemnt| #the paramter name that the each value will be stored to 

# DO Code with element 

} 
#examle 
array=[1,2,3,4,5] 
array.each{
|num| puts num 
}  
# << OR >> 
array,each do |num| 
	puts num  
end 

array.each_with_index {        #block of code 
|elemnt,indx| #the paramter name that the each value will be stored to 

# DO Code with element and index  

} 
#examle 
array=[1,2,3,4,5] 
array.each_with_index{
|num,indx| puts num,index  
}  
# << OR >> 
array,each_with_index do |num,index| 
	puts num ,index 
end 

#we also have str.each and str.each_with_index 
```

 

```ruby
str = "hello" 
puts str.include?("ello) #return trueor false depending on the presentance of data 

str.revrse()  #will reverse the string #will make a new copy
str.reverse!  #will revesr the data in the current calling line 
str.split("char") #start the splitting procces after the charachter 
 
```

_________________________________________________________________________________________ 

**Create a range number**  

```ruby
(1..100).each{|num| puts num } 
#this fumction will work as a range function in python  
100.times{ puts "hello"} #use it if you onlu care about iteration not the value of index 

```

_________________________________________________________________________________________ 

**nested loop in Ruby** 

```ruby
(1..3).each do |num1| 
	puts num1 
	(1..3).each do |num2| 
		print num2 

	end 
	puts  
end 

#output 
# 1
# 123
# 2
# 123
# 3
# 123 
```

_________________________________________________________________________________________ 

**Hashes in Ruby** 

 ****

```ruby
#creat a hash in ruby 
hash_table = {"name"=>"muhammed" , "age"=>23} 
# key=>value  =>(rocket) 
puts hash_table["name"] #to print the value of the key   
#to change the value of the key 
hash_table["name"] = "maio" 
#the key can be any thing  
```

_________________________________________________________________________________________ 

Method with Hashes 

 

```ruby
hash_table.length #get the number of element 
hash_table["key_not_exist"] = "data" #creat a new key in the hash container 
hash_table.has_key?(key) #check if it is has a key 
hash_table.has_value?(value) #check if it is has a key 
hash_table.keys #return the keys 
hash_table.values #return a list of value 
#example 
my_data = {
	"name"    => "Muhammed Eldabea" ,  
	"age"     => 23 , 
	"degree" => "ECE" 

} 

my_data.keys.each do |key| 
	puts key 
end 
# < ------------------------ >
my_data.each do |k,v| 
	puts k,v 
end 
puts my_data["key dosent exitst"] #get nothing 
# nil valur equal to nothing to print  
# to change the defult value of the hash to be any thing not nil 
my_data.new("value of defult")  

```

_________________________________________________________________________________________ 

Sort an Hash 

```ruby
counter = Hash.new(0) 
str = "hello my name is muhammed eldabea hashem " 

str.each_char{
	|char|  
	counter[char] +=1 
  } 

puts counter  
sorted_counter = Hash.new(0)
print counter.sort_by {|k,v| v } #sort_by return a 2d array with every element and its value in a sorted style depeong on the key or the value 

```

_________________________________________________________________________________________ 

**Map Function**   

used to apply  an operation to a sequence of data 

```ruby
arr = [1,2,3,4,5,5,6] 
arr.map {|elem| elem*2}  #this code can reelace the next code 
new_Array=[] 
arr.each{ |element| new_Array << element*2 }  
#it will map to every element in the array in make a procces to it 
 
```

_________________________________________________________________________________________ 

**Select Function**  

```ruby
(1..100).map { 
	|e| 
	if e %2 == 0 
		puts e 
	end  
	  } 

#will select every element that make the condiftion true 
even = (1..100).select{|elm| elm %2 == 0 } 

```

_________________________________________________________________________________________ 

**Ruby Styling code Notes** 

```ruby
raining = true

# Less preferred
if raining
    puts "don't forget an umbrella!"
end

# Preferred by a Rubyist
puts "don't forget an umbrella!" if raining
```

```ruby
people = ["Joey", "Bex", "Andrew"]

# Less preferred
p people[people.length - 1]

# Preferred by a Rubyist
p people[-1]
p people.last
```

```ruby
# Less preferred
def repeat_hi(num)
    i = 0
    while i < num
        puts "hi"
        i += 1
    end
end

# Preferred by a Rubyist
def repeat_hi(num)
    num.times { puts "hi" }
end
```

_________________________________________________________________________________________ 

Common enumerates 

```ruby
arr.all? {|elm| elm.even}  # return true if all elememnt make the true
arr.any? {|elm| elm.even}  # return true if at least one elememnt make the true 
arr.one? {|elm| elm.even}  # return true if one elememnt make the true 
arr.none? {|elm| elm.even}  # return true if no elememnt make the true 
arr.one? {|elm| elm.even}  # return the number od element make the true
arr.sum  #return the sum 
arr.flatten # 2D array to 1D array 
```

**Symbol Data Type**  

- it is not like string
- use :symbol_name  to create a symbol
- Symbols are Immutable
- Symbols that holding same data will have the same address in memory

    ```ruby
    # string in memry 
    "hello".object_id   # => 70233443667980
    "hello".object_id   # => 70233443606440
    "hello".object_id   # => 70233443438700 

    #symbol in memry 
    :hello.object_id    # => 2899228
    :hello.object_id    # => 2899228
    :hello.object_id    # => 2899228 
    ```

- as this characteristics it suitable to use it with hashes keys as it is unique and Ruby offer a shortcut to use it

```ruby
#it will replace the rocket operator => 
my_bootcamp = { name:"App Academy", color:"red", locations:["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]   #=> "red
```

_________________________________________________________________________________________ 

### Arguments

we can assign the argument in method with a default value as if the user forget to pass it a less argument it will handle it  with no error 

 

```ruby
def print_sent(str,uppercase_Style="true" ) 
	if uppercase_Style 
		p str.upcase  
	else 
	p str 
	end 
end 

```
