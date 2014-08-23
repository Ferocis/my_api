require 'spec_helper'

describe User do
#  let(:user) { build(:user) }
  before do
    OmniAuth.config.mock_auth[:twitter] = {
	'uid' => '12345'
    
    }

  end
  it "should not have nil config" do
    
  end
end
