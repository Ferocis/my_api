class Tweet < ActiveRecord::Base
	def self.search(search)
		client = Twitter::REST::Client.new do |config|
		config.consumer_key = 'PHrxW95nLpqjiB9dXpwf8TyN7'
		config.consumer_secret = 'ffuXwJLNcrLHduGYXb3YGqDIamx11DdgpYOuhQ6jEO0BeNtrks'
		config.access_token = '2737233824-IJLpN5aJDZBzuSkEvipUv2BqNZnMxnPtjcpgTWM'
		config.access_token_secret = 'tcCtiP50Tfb0UG6B6NjMFwBXfxrHAuZ5McPMuA4uHwx6g'
	end
	options = {:count => 50, :include_rts => true}
	
	client.user_timeline("blabla", options)

	begin		
		client.user_timeline(search, options)	
	rescue
		client.user_timeline("blabla", options)
	end	

	end	
end
