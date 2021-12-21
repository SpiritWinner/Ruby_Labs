def greeting
  # puts "Your name?"
  name = gets.to_s
  # puts "Your last name?"
  last_name = gets.to_s
  # puts "Your age?"
  age = gets.to_i

  if age < 18
    #  puts "Hello, #{name} #{last_name}. You're under 18"
    "Hello, #{name} #{last_name}. You're under 18"
  else
    #  puts "Hello, #{name} #{last_name}. Time to work"
    "Hello, #{name} #{last_name}. Time to work"
  end
end

def foobar(first_number, second_number)
  if first_number == 20 || second_number == 20
    # puts "#{second_number}"
    second_number
  else
    # puts "#{first_number + second_number}"
    first_number + second_number
  end
end
