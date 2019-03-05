# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum(0)
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  return false if arr.size < 2
  arr.combination(2).to_a.each do |item|
    return true if max_2_sum(item) == n
  end
  false
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  starts_with_vowel = /^[aeiouAEIOU]/
  return false if (s =~ starts_with_vowel)
  
  starts_with_letter = /^[a-zA-Z]/
  return true if (s =~ starts_with_letter)
end

def binary_multiple_of_4? s
  return false if (s =~ /[^01]/) || s.empty?
  return true if s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
 
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$#{format("%.2f", price)}"
  end
end
