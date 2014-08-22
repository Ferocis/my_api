require 'spec_helper'

describe "tweets/new.html.erb" do
  it "controller should be TweetsController" do
	controller.controller_path.should eq("tweets")
  end
end
