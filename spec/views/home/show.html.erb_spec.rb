require 'spec_helper'

describe "home/show.html.erb" do
#  it "displays tweets" do
#	user = double('user')
#	request.env['warden'].stub :authenticate! => user
#	allow(controller).to receive(:current_user) { user }

#	render :template => "home/show.html.erb"
#	render.should contain("Click The link below to send a tweet.")
#  end

  it "controller should be HomeController" do
	controller.controller_path.should eq("home")
  end
end
