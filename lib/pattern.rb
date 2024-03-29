class Pattern

  def self.for_person(person)
    case person.domain
      when "alphasights.com"
        [FirstNameDotLastName.new(person)]
      when "google.com"
        [FirstNameDotLastInitial.new(person),
        FirstInitialDotLastName.new(person)]
      when "apple.com"
        [FirstInitialDotLastInitial.new(person)]
      else
        raise Exception.new("Sorry, we don't have any person with this company domain (#{person.domain}) in our system so we can't efficiently predict their email address.")
    end
  end

end