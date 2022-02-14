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
  a,b = -Float::INFINITY,-Float::INFINITY
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
  if a==-Float::INFINITY; a=0; end; if b==-Float::INFINITY; b=0; end;
  a+b
end

def sum_to_n? arr,n
  if arr.length <= 1; return false; end
  st=1
  for i in arr do
    if arr[st..].include?(n-i)
      return true
    end
    st += 1
  end
  return false
end

# Part 2

def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length==0 or (s=~/^\w*$/)==nil or (s =~ /^[aeiouAEIOU]/) != nil
    return false 
  end
  true
end

def binary_multiple_of_4? s
  (s =~ /^[01]*00$|^0$/) != nil
end

# Part 3

class BookInStock
  # getter, setter handled by attr_accessor
  attr_accessor :isbn, :price 

  def initialize isbn, price
    # doesn't care what's actually in isbn, as long as it's non-empty
    raise ArgumentError if isbn == "" or price <=0
    @isbn, @price = isbn, price 
  end

  def price_as_string
    "$%0.2f" % @price
  end
end
