describe Pattern do
  # when passed in a Person object it should call the appropriate algorithm based on their domain
  before do
    @peter = Person.new
    @peter.first_name = "Peter"
    @peter.last_name = "Wong"
    @peter.domain = "alphasights.com"
    @craig = Person.new
    @craig.first_name = "Craig"
    @craig.last_name = "Silverstein"
    @craig.domain = "google.com"
    @steve = Person.new
    @steve.first_name = "Steve"
    @steve.last_name = "Wozniak"
    @steve.domain = "apple.com"
    @barack = Person.new
    @barack.domain = "whitehouse.gov" 
  end

  describe "alphasights.com" do
    it "should use algorithm first_name_dot_last_name" do
      expect(Pattern.for_person(@peter)).to be_an_instance_of(FirstNameDotLastName)
    end
  end

  describe "google.com" do
    it "should use the two right algorithms" do
      expect(Pattern.for_person(@craig)[0]).to be_an_instance_of(FirstNameDotLastInitial)
      expect(Pattern.for_person(@craig)[1]).to be_an_instance_of(FirstInitialDotLastName)
    end
  end

  describe "apple.com" do
    it "should use algorithm first_initial_dot_last_initial" do
      expect(Pattern.for_person(@steve)).to be_an_instance_of(FirstInitialDotLastInitial)
    end
  end

  describe "whitehouse.gov" do
    it "should throw an error message" do
      expect(lambda { Pattern.for_person(@barack) }).to raise_error(Exception)
    end
  end
end
