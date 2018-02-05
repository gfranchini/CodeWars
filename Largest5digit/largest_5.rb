#https://www.codewars.com/kata/51675d17e0c1bed195000001/train/ruby

def solution(digits)
  digits = digits.to_s.split('')
  length = digits.length
  iterations = length - 4
  fives = Array.new
  i = 0

  iterations.times {
    a = Array.new

    (i..i+4).each { |x|
      a.push(digits[x])
    }
    i += 1
    fives.push(a.join().to_i)
  }
  puts fives.max
end

solution(1234567890)
puts ".............................."
solution(12345678909125)
