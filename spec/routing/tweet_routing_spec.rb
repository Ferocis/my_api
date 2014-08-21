require 'spec_helper'

describe "routes for tweets" do
  it "routes /tweets to tweet controller" do
	expect(get("/tweets")).to route_to("tweets#index")
  end

  it "routes /tweets/new to tweet#new" do
	expect(get("/tweets/new")).to route_to("tweets#new")
  end

end
  
describe "routes for home" do
  it "routes / to home controller" do
	expect(get("/")).to route_to("home#show")
  end
end


describe "routes for auth callback" do
  it "routes auth/:provider/callback to sessions#create" do
	expect(:get => "auth/:provider/callback").to route_to(:controller => "sessions", :action => "create", :provider => ":provider")
  end

  it "same as last one but with one specific provider" do
	expect(:get => "auth/twitter/callback").to route_to(:controller => "sessions", :action => "create", :provider => "twitter")
  end

  it "routes signout to sessions#destroy" do
	expect(get("signout")).to route_to("sessions#destroy")
  end

end
