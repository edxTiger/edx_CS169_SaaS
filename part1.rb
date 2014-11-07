#Define a method sum which takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero. 

def sum(a)
	a.empty? ? 0 : a.reduce(:+)
end

#Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. 

def max_2_sum(a)

end

raise "Error [1, 2, 3, 4] must be equal 7" unless max_2_sum [1, 2, 3, 4] != 7