require 'spec_helper'

  describe Tweet do
    it "should return a message from existing user" do
	Tweet.search("cia").should_not be_nil
    end
  end

  describe Tweet do
    it "returned message should not be nil" do
	Tweet.search("cia").length.should be > 0
    end
  end

  describe Tweet do
    it "should not be nil" do
	Tweet.should_not be_nil
    end
  end
