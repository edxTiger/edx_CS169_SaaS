module FunWithStrings
# Part A — Palindromes:
# A palindrome is a word or phrase that reads the same forwards as backwards, ignoring case, punctuation, 
# and nonword characters. 
  def palindrome?
    # your code here
    self.downcase.gsub(/[^a-z]/i, '').reverse == self.downcase.gsub(/[^a-z]/i, '')
  end

# Part B — Word Count: 
# Define a function count_words that, given an input string, return a hash whose keys are words in the 
# string and whose values are the number of times each word appears
  def count_words
    # your code here
    res = {}
    self.downcase.gsub(/\W/i, ' ').split(' ').each {|e| res.has_key?(e) ? res[e] += 1 : res[e] = 1}
    res
  end

# Part C — Anagrams:
# An anagram group is a group of words such that any one can be converted into any other just by 
# rearranging the letters. For example, "rats", "tars" and "star" are an anagram group.
# Given a space separated list of words in a single string, write a method that groups them into 
# anagram groups and returns the array of groups. Case doesn't matter in classifying string as anagrams 
# (but case should be preserved in the output), and the order of the anagrams in the groups doesn't matter.
  def anagram_groups
    # your code here
    res = {}
    self.split(/ /).each {|w| 
      k = w.downcase.chars.to_a.sort.join
      res.has_key?(k) ? res[k].push(w) : res[k] = [].push(w)
    }
    res.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

'scream cars for four scar creams'.anagram_groups