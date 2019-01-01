# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  
  arr.each do |x|
    sum += x
  end
  
  sum
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  
  max1 = arr.max
  arr_dup = arr.clone
  arr_dup.delete_at arr.index max1
  max2 = arr_dup.max
  
  max1 + max2
end

def sum_to_n? arr, n
  return false if arr.length < 2
  
  arr.combination(2).any? do |a, b|
    a + b == n
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /^(?=[a-z])[^aeiou]/i =~ s
end

def binary_multiple_of_4? s
  return false if /[^01]/ =~ s || s.empty?
  
  bin = s.to_i(2)
  bin % 4 == 0
end

# Part 3

class BookInStock
  def initialize isbn, price
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
