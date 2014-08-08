class FirstInitialDotLastInitial
  attr_accessor :person

  def initialize(person)
    self.person = person
  end

  def email
    person.first_name.downcase.chars.first + "." + person.last_name.downcase.chars.first + "@" + person.domain.downcase
  end
end