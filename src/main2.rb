require "stock_quote"

stock = StockQuote::Stock.quote("AAPL")

puts stock.PERatio
puts stock.PERatioRealtime
