# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  # YOUR CODE HERE
  s = 0
  for i in arr
    s = s + i
  end
  # puts s
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  
  # Get the length of the array
  l = arr.length()
  if l == 0
    return 0
  elsif l == 1
    return arr[0]
  else
    # Sort the array
    arr = arr.sort()
    max = arr[l-1]
    max_2 = arr[l-2]
    return max + max_2
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  dict = {}
  for i in arr
    if dict.has_key?(i) == false
      dict[i] = 1
    else
      temp = dict[i]
      dict[i] = temp + 1
    end
  end

  # puts dict
  
  dict.each do |key, value|
    num1 = key
    # puts num1
    temp = value
    dict[num1] = temp - 1
    num2 = n - num1
    # puts num2
    if dict.has_key?(num2) and dict[num2] >= 1
      return true
    end
  end

  return false

end

# puts sum([1, -2, -3, -4, -5])
# puts max_2_sum([1, -2, -3, -4, -5])
# puts sum_to_n?([1, 2, 5, 3], 1)

# Part 2
def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def check_alpha?(c)
  if c.ord >= 97 and c.ord <= 122
    return true
  else
    return false
  end
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # Convert to lowercase
  s = s.downcase
  if s.length() == 0
    return false
  else
    if s[0] == "a" or s[0] == "e" or s[0] == "i" or s[0] == "o" or s[0] == "u" or check_alpha?(s[0]) == false
      return false
    else
      return true
    end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # Get the length of the string
  l = s.length()
  if l == 0
    return false
  else
    i = 0
    sum = 0
    while i < l
      if s[i] == "1" or s[i] == "0"
        sum = sum + (s[i].to_i * (4 ** (l-i-1)))
        i = i + 1
      else
        return false
      end
    end
    return sum%4 == 0
  end
end

# Part 3
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if isbn.length() == 0 or price <= 0
      raise ArgumentError
    end

    def price_as_string()
      x = '%.2f' % price.to_f
      puts x
      return "$" + x.to_s
    end

  end
end
