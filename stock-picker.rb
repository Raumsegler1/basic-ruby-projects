def stock_picker(array)
  buy_sell = [0, 1, -200] # (buy_index, sell_index, profit)
  array.each_with_index do |buy_price, buy_index|
    array.each_with_index do |sell_price, sell_index|
      if buy_index < sell_index 
        profit = sell_price - buy_price
        if ((profit) > buy_sell[2])
          buy_sell = [buy_index, sell_index, profit]
        end
      end
    end
  end
  return buy_sell[0..1]
end

p stock_picker([17,3,6,9,15,8,6,1,10,14])