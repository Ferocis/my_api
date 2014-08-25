require 'spec_helper'

describe HomeController do
  render_views


  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

  it "should render home template" do
    expect { get :home }.to render_template(layout: true)
  end

  it "should load application layout" do
    get 'show'
    response.should render_template "layouts/application"
  end

end
