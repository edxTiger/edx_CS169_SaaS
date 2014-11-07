#Define a method sum which takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero. 

def sum(a)
	a.empty? ? 0 : a.reduce(:+)
end

raise "Error: sum([1, 2, 3, 4]) must be 10" unless sum([1, 2, 3, 4]) == 10
raise "Error: sum([]) must be 0" unless sum([]) == 0

#Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. 

def max_2_sum(a)
	a.empty? ? 0 : a.sort.last(2).reduce(:+)
end

raise "Error: max_2_sum([4]) must be equal 7" unless max_2_sum([4]) == 4
raise "Error: max_2_sum([4, 2, 1, 3]) must be equal 7" unless max_2_sum([4, 2, 1, 3]) == 7
raise "Error: max_2_sum([]) must be 0" unless max_2_sum([]) == 0

#Define a method sum_to_n? which takes an array of integers and an additional integer, n, as arguments and returns true if any two distinct elements in the array of integers sum to n. An empty array or single element array should both return false. 

def sum_to_n?(a, n)
	a.combination(2).to_a.map {|element| element.reduce(:+) == n}.any? {|element| element == true}
end

raise "Error: sum_to_n? [4, 3, -1], 3 must be true" unless sum_to_n?([4, 3, -1], 3) == true
raise "Error: sum_to_n? [4, 3, -1], 70 must be false" unless sum_to_n?([4, 3, -1], 70) == false
