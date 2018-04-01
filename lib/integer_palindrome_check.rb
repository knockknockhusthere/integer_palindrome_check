require 'pry'
# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil || number < 0

  num = number
  length = 0

  while num > 9
    num /= 10
    length += 1
  end

  until number < 9
    first = number / (10 ** length)
    last = number % 10
    if first != last
      return false
    else
      number = number % (10 ** length)
      number /= 10
      length -= 2

    end
  end
  return true
  # raise NotImplementedError
end

puts is_palindrome(1234321)
