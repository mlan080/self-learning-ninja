i = 1
while i <= 10 do
  case
    when (i % 6 ) == 0
      puts 'bangbosch'
    when (i % 3) == 0
      puts 'bang'
    when (i % 2 ) == 0
      puts 'bosch'
  end
  puts i
  i += 1
end
