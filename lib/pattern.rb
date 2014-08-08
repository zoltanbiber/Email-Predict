class Pattern

  def self.for_person(person)
    case person.domain
      when "alphasights.com"
        FirstNameDotLastName.new(person).email
      when "google.com"
        [FirstNameDotLastInitial.new(person).email,
        FirstInitialDotLastName.new(person).email]
      when "apple.com"
        FirstInitialDotLastInitial.new(person).email
      else
        raise Exception.new("Sorry, we don't have any person with this company domain in our system so we can't efficiently predict their email address.")
    end
  end

end