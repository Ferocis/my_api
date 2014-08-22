require 'spec_helper'

describe "tweets/create.html.erb" do
  it "controller should be TweetsController" do
	controller.controller_path.should eq("tweets")
  end
end
