require 'spec_helper'

describe FirstInitialDotLastName do
  
  before do
    p = Person.new
    p.first_name = "Peter"
    p.last_name = "Wong"
    p.domain = "alphasights.com"
    @initial = FirstInitialDotLastName.new(p)
  end

  describe "#email" do
    it "should return the right email address" do
      expect(@initial.email).to eq("p.wong@alphasights.com")
    end
  end
end