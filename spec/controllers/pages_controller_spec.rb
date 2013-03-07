require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'buy_and_sell'" do
    it "returns http success" do
      get 'buy_and_sell'
      response.should be_success
    end
  end

  describe "GET 'mls'" do
    it "returns http success" do
      get 'mls'
      response.should be_success
    end
  end

  describe "GET 'bpo'" do
    it "returns http success" do
      get 'bpo'
      response.should be_success
    end
  end

end
