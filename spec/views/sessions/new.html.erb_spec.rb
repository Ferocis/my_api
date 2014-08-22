require 'spec_helper'

describe "sessions/new.html.erb" do
  it "controller should be SessionsController" do
	controller.controller_path.should eq("sessions")
  end
end
