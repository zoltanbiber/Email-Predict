require 'spec_helper'
require 'pry'

describe FirstNameDotLastName do
  
  before do
    @p = Person.new
    @p.first_name = "Peter"
    @p.last_name = "Wong"
    @p.domain = "alphasights.com"
    @initial = FirstNameDotLastName.new(@p)
  end

  describe "#email" do
    it "should return the right email address" do
      expect(@initial.email).to eq("peter.wong@alphasights.com")
    end
  end
end