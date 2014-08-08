class Pattern

  def self.for_person(person)
    case person.domain
      when "alphasights.com"
        FirstNameDotLastName.new(self)
      when "google.com"
        # call different algorithm
      when "apple.com"
        # call different algorithm
      else
        puts "Sorry, we don't have any person with this company domain in our system so we can't efficiently predict their email address."
    end
  end

end