class TweetsController < ApplicationController
 
def index
end

def home
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
