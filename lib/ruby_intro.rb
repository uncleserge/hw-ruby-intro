# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    sum = 0 
    arr.each { |n| sum += n }
    sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  my_arr=arr.sort.reverse
  my_arr[0]+my_arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  unless arr.empty?
    top = arr.length
    for i in 0...top
      for j in i+1...top
        return true if arr[i] + arr[j] == n
      end
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.downcase.index(/[qwrtypsdfghjklzxcvbnm]/) == 0
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  x = Integer "0b" + s
  return true if x%4 == 0
  rescue
    false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize (isbn, price)
    raise ArgumentError, "ISBN is not correct" if isbn.empty?
    raise ArgumentError, "Price is not correct" if price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%.2f" % @price
  end
end
