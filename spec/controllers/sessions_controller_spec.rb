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

#  it "should redicter user to the root url" do
#    post :create, provider: :twitter
#    response.should redicter_to root_url
#  end
  
#  describe "#destroy" do
#    before do
#	post :create, provider: :twitter
#    end
    
#    it "should clear session" do
#	session[:user_id].should_not be_nil
#	delete :destroy
#	session[:user_id].should be_nil
#    end

#    it "should redicter to root url" do
#	delete :destroy
#	response.should redicter_to root_url
#    end
#  end
end
