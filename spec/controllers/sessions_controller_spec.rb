require 'spec_helper'

describe SessionsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

#  it "allows authenticated access" do
#    SessionsController.new.create
#    get :home
#    response.should be_success
#  end

end
