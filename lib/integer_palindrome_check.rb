require 'pry'
# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil
  return false if number < 0
  # return true if number < 10

  num = number
  length = 0

  while num > 9
    num /= 10
    length += 1
  end

  while number > 9
    first = number / (10**length)
    last = number % 10
    if first == last
      number %= (10 ** length)
      number /= 10
      # binding.pry
    else
      # binding.pry
      return false
    end
  end

  return true
  raise NotImplementedError
end

puts is_palindrome(1234321)
