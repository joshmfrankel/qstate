require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'faq'" do
    it "returns http success" do
      get 'faq'
      response.should be_success
    end
  end

  describe "GET 'schedule'" do
    it "returns http success" do
      get 'schedule'
      response.should be_success
    end
  end

  describe "GET 'proposal'" do
    it "returns http success" do
      get 'proposal'
      response.should be_success
    end
  end

  describe "GET 'registration'" do
    it "returns http success" do
      get 'registration'
      response.should be_success
    end
  end

end
