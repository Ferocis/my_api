require 'spec_helper'

describe "home/show.html.erb" do
  it "displays tweets" do
	pending
	user = double('user')
	request.env['warden'].stub :authenticate! => user
	allow(controller).to receive(:current_user) { user }

	render :template => "home/show.html.erb"
	render.should contain("Click The link below to send a tweet.")
  end
end
