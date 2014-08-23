require 'spec_helper'

describe SessionsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end


#  it "should create a session" do
#    session[:user_id].should be_nil
#    post :create, provider: :twitter
#    session[:user_id].should_not be_nil
#  end

  it "response should have status 200" do
    post :create, provider: :twitter
    expect(response.status).to eq(200)
  end
  
  describe "#destroy" do
    before do
	post :create, provider: :twitter
    end
    
    it "should clear session" do
	if !session[:user_id]
		delete :destroy
		session[:user_id].should be_nil
	end
    end

    it "should redicter to root url" do
	delete :destroy
	response.should redirect_to root_url
    end
  end
end
