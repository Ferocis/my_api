require 'spec_helper'

describe SessionsController do
  before do
    OmniAuth.config.mock_auth[:twitter] = {
	'uid' => '12345',
	'provider' => 'twitter',
	'credentials' => {
		'token' => 'token',
		'secret' => 'secret'
	}
    }
    session[:omniauth_twitter] = OmniAuth.config.mock_auth[:twitter]
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

#  it "should create a session" do
#    session[:user_id].should be_nil
#    post :create, provider: :twitter
#  end

  it "as an authorized user" do
   session[:omniauth_twitter].should eq( { 'uid' => '12345', 'provider' => 'twitter', 'credentials' => { 'token' => 'token', 'secret' => 'secret' }  } )
  end

  it "omniauth auth should be success" do
#    session[:omniauth_twitter]
    if !session[:omniauth_twitter]
	User.from_omniauth({ 'provider' => 'twitter', 'uid' => '12345'}).should be_success
    end
  end

  it "response should have status 200" do
    post :create, provider: :twitter
# status 200 == success
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
