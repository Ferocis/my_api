class TweetsController < ApplicationController
 
def index
	client = Twitter::REST::Client.new do |config|
		config.consumer_key = 'rkv9vy0QcRY35Yw5Zq9aD2WMW'
		config.consumer_secret =  'jIIvit7otJeRsIhsBjA8GEQMXdyCBk55gy2ljQw9GOjJDhbXov'
		config.access_token = '2737233824-r9UnPv2NyzTQGAIxv7FKGgDq4QWHFxQ97DnxqwG'
		config.access_token_secret = 'o7wZgITAcpGvt4TTVvVOrMtQKPTVwDGIu49xP7oINkbKB'
	end


	options = {:count => 50, :include_rts => true}
	@tweet_news = client.user_timeline("wbzyl", options)
end
	

end
