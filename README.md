array = [4, 4, 5, 6, 6, 5]

frequency = Hash.new(0)
array.each { |num| frequency[num] += 1 }

max_freq = frequency.values.max
most_frequent = frequency.select { |k, v| v == max_freq }.keys

puts "Самые частые элементы: #{most_frequent.join(', ')}"
