describe Pattern do
  # when passed in a Person object it should call the appropriate algorithm based on their domain

  describe "for_person method" do

    context "alphasights.com" do
      before do
        @peter = Person.new
        @peter.first_name = "Peter"
        @peter.last_name = "Wong"
        @peter.domain = "alphasights.com"
        @emails = Pattern.for_person(@peter)
      end

      it "should use algorithm first_name_dot_last_name" do
        expect(@emails.first).to be_an_instance_of(FirstNameDotLastName)
      end
    end

    context "google.com" do
      before do
        @craig = Person.new
        @craig.first_name = "Craig"
        @craig.last_name = "Silverstein"
        @craig.domain = "google.com"
        @emails = Pattern.for_person(@craig)
      end

      it "should use the two right algorithms" do
        expect(@emails[0]).to be_an_instance_of(FirstNameDotLastInitial)
        expect(@emails[1]).to be_an_instance_of(FirstInitialDotLastName)
      end
    end

    context "apple.com" do
      before do
        @steve = Person.new
        @steve.first_name = "Steve"
        @steve.last_name = "Wozniak"
        @steve.domain = "apple.com"
        @emails = Pattern.for_person(@steve)
      end

      it "should use algorithm first_initial_dot_last_initial" do
        expect(@emails.first).to be_an_instance_of(FirstInitialDotLastInitial)
      end
    end

    context "whitehouse.gov" do
      before do
        @barack = Person.new
        @barack.first_name = "Barack"
        @barack.last_name = "Obama"
        @barack.domain = "whitehouse.gov" 
      end

      it "should throw an error message" do
        expect(lambda { Pattern.for_person(@barack) }).to raise_error(Exception)
      end
    end
  end

end
