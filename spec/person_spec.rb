require 'spec_helper'

describe Person do
  before do
    @person = Person.new
    @person.first_name = "John" 
    @person.last_name = "Ferguson"
    @person.domain = "alphasights.com" 
  end

  describe "email prediction" do
    it "should predict email based on person's name and domain" do
      expect(@person.predict_email).to eq("john.ferguson@alphasights.com")
    end
  end

end