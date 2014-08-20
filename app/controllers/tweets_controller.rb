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

def new
end

def create
	current_user.tweet(twitter_params[:message])
end

def twitter_params
	params.require(:tweet).permit(:message)
end

end
