require 'spec_helper'

describe Person do

  describe "Peter Wong" do
    before do
      @peter = Person.new
      @peter.first_name = "Peter" 
      @peter.last_name = "Wong"
      @peter.domain = "alphasights.com"
    end

    it "should predict email based on person's name and domain" do
      expect(@peter.predict_email).to eq(["peter.wong@alphasights.com"])
    end
  end

  describe "Craig Silverstein" do
    before do
      @craig = Person.new
      @craig.first_name = "Craig" 
      @craig.last_name = "Silverstein" 
      @craig.domain = "google.com"
    end

    it "should predict email based on person's name and domain" do
      expect(@craig.predict_email).to eq(["craig.s@google.com", "c.silverstein@google.com"])
    end
  end

  describe "Steve Wozniak" do
    before do
      @steve = Person.new
      @steve.first_name = "Steve" 
      @steve.last_name = "Wozniak" 
      @steve.domain = "apple.com"
    end

    it "should predict email based on person's name and domain" do
      expect(@steve.predict_email).to eq(["s.w@apple.com"])
    end
  end

  describe "Barack Obama" do
    before do
      @barack = Person.new
      @barack.first_name = "Barack" 
      @barack.last_name = "Obama" 
      @barack.domain = "whitehouse.gov" 
    end

    it "should predict email based on person's name and domain" do
      expect {@barack.predict_email}.to raise_error(Exception)
    end
  end


end