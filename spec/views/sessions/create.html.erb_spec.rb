require 'spec_helper'

describe "sessions/create.html.erb" do
  it "web controller should be SessionsController" do
	controller.controller_path.should eq("sessions")
  end
end
