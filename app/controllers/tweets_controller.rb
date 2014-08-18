class TweetsController < ApplicationController
 
def index
	show_tweets
end
	
def show_tweets
#	@tweet_news = Tweet.search(params[:search])
	
	@tweets = Tweet.search(params[:search])

	respond_to do |format|
		format.html
		format.js
	end
end

end
