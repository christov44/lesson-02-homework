# Code Reading

# defining method fizzbuzz, which takes num as a parameter. The method prints something depending on if the number is divisible by 15, 3, or 5.
def fizzbuzz(num)

  case #sets up a case with certain conditions
    when num % 15 == 0 then "FizzBuzz" #if the num passed is divisible by 15, prints "FizzBuss"
    when num % 3  == 0 then "Fizz" #if the num passed is divisible by 3, prints "Fizz"
    when num % 5  == 0 then "Buzz" #if the num passed is divisible by 5, prints "Buzz"
    else num #if none of the above, return the num only
  end
end


#method that counts up to the limit passed (by increments of 1), printing a "FizzBuzz", "Fizz", or "Buzz" whenever one of the fizzbuzz method's conditions are met
def fizz_buzz_to(limit)
  1.upto(limit).each do |num| #starting with 1, loops the code below and increments by 1 until the limit is reached
    puts fizzbuzz(num) #prints the output of the fizzbuzz method above, passing num in increments of 1 per the above loop
  end
end


# Fix Broken Code

def area_of_triangle(base, height)
  puts base * height / 2 
end

base = 7
height = 6

puts area_of_triangle(base, height)

# Coding

class Waitlist

  attr_accessor :list

  def initialize
    @list = ["Baker", "Donald", "Sam"]
  end

  def add_party(name)  
    list << name
  end 

  def line_status
    @list.each do |next_in_line|
      "#{next_in_line}"
    end
  end

  def seat
    @list.shift
    list
  end

end


taco_house = Waitlist.new
puts taco_house.inspect

puts taco_house.line_status

taco_house.add_party("The Dude")
puts taco_house.inspect

puts taco_house.line_status

puts taco_house.seat
puts taco_house.inspect



