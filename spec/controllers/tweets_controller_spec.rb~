require 'spec_helper'

describe TweetsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  it "should load application layout" do
    get 'new'
    response.should render_template "layouts/application"
  end


end
