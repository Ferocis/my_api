class HomeController < ApplicationController
  def show
	show_tweets
  end

	def show_tweets
	
		@tweets = Tweet.search(params[:search])

		respond_to do |format|
			format.html
			format.js
		end
	end

end
