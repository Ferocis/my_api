require 'spec_helper'

describe "home/show.html.erb" do

  it "controller should be HomeController" do
	controller.controller_path.should eq("home")
  end
end
