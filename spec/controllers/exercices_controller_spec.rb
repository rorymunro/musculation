require 'spec_helper'

describe ExercicesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'pectoraux'" do
    it "returns http success" do
      get 'pectoraux'
      response.should be_success
    end
  end

  describe "GET 'biceps'" do
    it "returns http success" do
      get 'biceps'
      response.should be_success
    end
  end

  describe "GET 'triceps'" do
    it "returns http success" do
      get 'triceps'
      response.should be_success
    end
  end

  describe "GET 'epaules'" do
    it "returns http success" do
      get 'epaules'
      response.should be_success
    end
  end

  describe "GET 'dos'" do
    it "returns http success" do
      get 'dos'
      response.should be_success
    end
  end

  describe "GET 'jambes'" do
    it "returns http success" do
      get 'jambes'
      response.should be_success
    end
  end

  describe "GET 'trapezez/cou'" do
    it "returns http success" do
      get 'trapezez/cou'
      response.should be_success
    end
  end

end
