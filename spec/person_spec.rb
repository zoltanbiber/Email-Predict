require 'spec_helper'

describe Person do
  before do
    @craig = Person.new
    @craig.first_name = "Craig" 
    @craig.last_name = "Silverstein" 
    @craig.domain = "google.com"
    @steve = Person.new
    @steve.first_name = "Steve" 
    @steve.last_name = "Wozniak" 
    @steve.domain = "apple.com"
    @barack = Person.new
    @barack.first_name = "Barack" 
    @barack.last_name = "Obama" 
    @barack.domain = "whitehouse.gov" 
  end

  describe "Peter Wong" do
    before do
      @peter = Person.new
      @peter.first_name = "Peter" 
      @peter.last_name = "Wong"
      @peter.domain = "alphasights.com"
    end
    it "should predict email based on person's name and domain" do
      expect(@peter.predict_email).to eq("peter.wong@alphasights.com")
    end
  end



end