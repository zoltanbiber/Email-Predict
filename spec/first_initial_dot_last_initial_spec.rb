require 'spec_helper'

describe FirstInitialDotLastInitial do
  
  before do
    p = Person.new
    p.first_name = "Peter"
    p.last_name = "Wong"
    p.domain = "alphasights.com"
    @initial = FirstInitialDotLastInitial.new(p)
  end

  describe "#email" do
    it "should return the right email address" do
      expect(@initial.email).to eq("p.w@alphasights.com")
    end
  end
end