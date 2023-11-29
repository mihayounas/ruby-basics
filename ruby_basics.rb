def caesar_cipher(text, shift)
    text.chars.map do |char|
      if char.match?(/[A-Za-z]/)
        start = char.match?(/[A-Z]/) ? 'A' : 'a'
        ((char.ord - start.ord + shift) % 26 + start.ord).chr
      else
        char
      end
    end.join
  end


  def substrings(word, dictionary)
    word.downcase!
    substr_count = Hash.new(0)
  
    dictionary.each do |substring|
      substring.downcase!
      occurrences = word.scan(substring).length
      substr_count[substring] += occurrences if occurrences.positive?
    end
  
    substr_count
  end
  
  word = "banana"
  dictionary = ["na", "ba", "an", "ana"]
  result = substrings(word, dictionary)
  puts result
  

  def stock_picker(prices)
    max_profit = 0
    best_days = [0, 0]
  
    prices.each_with_index do |buy_price, buy_day|
      prices[buy_day + 1..-1].each_with_index do |sell_price, sell_day|
        total_profit = sell_price - buy_price
  
        if total_profit > max_profit
          max_profit = total_profit
          best_days = [buy_day, sell_day + buy_day + 1]
        end
      end
    end
  
    best_days
  end
  

  stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
  result = stock_picker(stock_prices)
  puts result

  def bubble_sort(arr)
    n = arr.length
  
    loop do
      swapped = false
  
      (n - 1).times do |i|
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swapped = true
        end
      end
  
      break unless swapped
    end
  
    arr
  end
  

  unsorted_array = [4, 3, 78, 2, 0, 2]
  sorted_array = bubble_sort(unsorted_array)
  puts sorted_array
  
  