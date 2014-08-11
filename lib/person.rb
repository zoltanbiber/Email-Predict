class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :domain

  def predict_email
    Pattern.for_person(self).map { |pattern| pattern.email }
  end

end

