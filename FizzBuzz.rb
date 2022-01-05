def fizz_buzz(number)
  if number % 3 == 0 && number % 5 ==0
    "FizzBuzz"
  elsif number % 5 ==0
    "Buzz"
  elsif  number % 3 == 0
    "Fizz"
  else 
    "#{number}"
  end
end

puts "数字を入力してください。"
number = gets.to_i

puts "結果は..."

puts fizz_buzz(number)
