#require 'json'
#require 'rest-client'

URL='http://ichart.yahoo.com/table.csv?s='
ENDER='&f='
RETURN='snd1l1yr'

class Stock
	DATA=%w(Symbol BookValuePerShare DividendPayDate TrailingAnnualDividendYield TrailingAnnualDividendYieldInPercent DilutedEPS FiftydayMovingAverage MarketCapitalization Open PEGRatio PERatio PERatioRealtime PreviousClose PriceBook Revenue Volume Name Notes)

end

user_quotes = ARGV

puts URL+user_quotes.join('+')+ENDER

URL=URL+user_quotes.join('+')+ENDER+RETURN

puts URL

RestClient::Request.execute(:url => URL, :method => :get, :verify_ssl => false) 
#if response.code == 200
#	parse(response, symbol, format)
#else
#	warn "[BAD REQUEST] #{ url }"
#NoDataForStockError.new
#end
