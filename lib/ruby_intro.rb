# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for i in arr
    sum +=i
  end
  return sum
  
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  end
  if arr.size == 1
    return arr[0]
  end
  
  first = arr.min
  second = arr.min
  for i in arr
    if i >= first
      second = first
      first = i
    end
    if i < first && i > second
      second = i
    end
  end
  return (first + second)
end

def sum_to_n?(arr, n)
	return false if arr.empty?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  return  "Hello, " + name
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  return true if s == '0'
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
  attr_accessor :isbn
	attr_accessor :price
  def initialize(isbn, price)
    if(isbn.empty? || price <=0)
      raise ArgumentError, "illegal argument"
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string 
    return "$" + '%.2f' % @price
  end
  
end
