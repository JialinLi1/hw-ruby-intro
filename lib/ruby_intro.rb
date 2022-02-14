# When done, submit this entire file to the autograder.

# Part 1

def sum arr 
  res = 0
  for i in arr do
      res += i
  end
  res
end

def max_2_sum arr
  a,b = 0,0
  for i in arr do 
      if i>a 
          if i>b 
              a=b
              b=i
              next
          end
          a=i 
          next
      end
  end
  a+b
end

def sum_to_n? arr,n
  for i in arr do
      if arr.include?(n-i)
          return true
      end
  end
  return false
end

# Part 2

def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s
  (s =~ /^[aeiouAEIOU]/) != nil
end

def binary_multiple_of_4? s
  (s =~ /^[01]*00$|^0$/) != nil
end

# Part 3

class BookInStock
  # getter, setter handled by attr_accessor
  attr_accessor :isbn, :price 

  def initialize isbn, price
      # doesn't care what's actually in isbn, as long as non-empty, starts with number and includes number/hypens
      raise ArgumentError if isbn == "" or price <=0 or not isbn =~ /^\d[\d\-]*$/
      @isbn, @price = isbn, price 
  end

  def price_as_string
      "$%0.2f" % @price
  end
end
