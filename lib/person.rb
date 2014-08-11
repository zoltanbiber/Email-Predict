require 'pry'
class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :domain

  def predict_email
    person_object = Pattern.for_person(self)
    if person_object.is_a? Array
      people = []
      person_object.each do |person| 
        people << person.email
      end
    return people   
    else
      person_object.email
    end
  end

end

