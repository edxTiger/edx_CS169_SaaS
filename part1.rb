#Define a method sum which takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero. 

def sum(a)
	a.empty? ? 0 : a.reduce(:+)
end

#Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. 

def max_2_sum(a)
	a.empty? ? 0 : a.sort.last(2).reduce(:+)
end

raise "Error max_2_sum([4]) must be equal 7" unless max_2_sum([4]) == 4
raise "Error max_2_sum([4, 2, 1, 3]) must be equal 7" unless max_2_sum([4, 2, 1, 3]) == 7