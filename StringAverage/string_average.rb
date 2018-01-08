def average_string(s)
  integer = {zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9}
   average = []

   #split input into array of symbols
   s = s.split(" ").map { |x| x.to_sym }

   #validate that items exist in hash
   if s == []
     puts "n/a"
   elsif s.all? {|x| integer.has_key?(x)}

     #push all items of array and validate against hash
     s.each { |x| average.push(integer[x]) }

     #take average of array
     puts integer.key((average.inject(0.0) { |sum, el| sum + el } / average.size).floor).to_s
    else
     puts "n/a"
   end
end


average_string("zero nine five two")
average_string("four six two three")
average_string("") #should return "n/a"
average_string("ten") #should return "n/a"
average_string("pippi")
