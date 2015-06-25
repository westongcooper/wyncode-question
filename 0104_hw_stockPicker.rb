# # 0201_hw_putting_Ritz.rb

# def stock_pickerOld(days)
# 	maxProfit = -1.0/0
# 	days.each{ |buy| 
# 		p "buy #{buy}"
# 		days.each { |sell|
# 			p "sell #{sell}"
# 			sale = sell - buy
# 			p "sale #{sale}"
# 			maxProfit = sale if sell > maxProfit
# 			p "max #{maxProfit}"
# 		}
# 	}
# 	# maxProfit
# end

def stock_picker(days)
	maxProfit = 0
	buy = 0
	while buy < days.length
		sell = buy
		while sell < days.length
			profit = days[sell] - days[buy]
			sell += 1
			maxProfit = profit if maxProfit < profit
		end
		buy += 1
	end
	maxProfit
end


p stock_picker([100,10,2,3,4,1])
p stock_picker([20,65,48,22,73,1])
