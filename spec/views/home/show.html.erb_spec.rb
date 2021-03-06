require 'spec_helper'

describe "home/show.html.erb" do

  it "controller should be HomeController" do
	controller.controller_path.should eq("home")
  end

  context "not logged in" do
    it "should render correct page" do
	view.stub(:current_user) { nil }
	render 
	rendered.should eql('	<p class="text-danger">You must log in to send a tweet.</p>
')
    end
    
	it "should have sing in button" do
		view.stub(:current_user) { nil }
		render template: "home/show", layout: 'layouts/application.html.erb'
	
		rendered.should contain('Sign in')
	end
  end


end

