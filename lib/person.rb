# represent a Person or Email in an object-oriented approach
# write unit tests for methods in a TDD approach
# put the sample dataset into the file to see which company uses which algorithm
# ask the user to input the advisor's name and company domain
# call the appropriate methods and return pssible email addresses for that person 
# e.g. if the domain matches 'google.com', call the two methods/algorithms google is using 
# in case the domain is not in the sample dataset (e.g. 'whitehouse.gov') return an error message 

sample_dataset = {
  "John Ferguson" => "john.ferguson@alphasights.com",
  "Damon Aw" => "damon.aw@alphasights.com",
  "Linda Li" => "linda.li@alphasights.com",
  "Larry Page" => "larry.p@google.com",
  "Sergey Brin" => "s.brin@google.com",
  "Steve Jobs" => "s.j@apple.com"
}

to_predict = {
  "Peter Wong" => "alphasights.com",
  "Craig Silverstein" => "google.com",
  "Steve Wozniak" => "apple.com",
  "Barack Obama" => "whitehouse.gov"
}

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :domain

  def predict_email
    Pattern.for_person(self)
  end

end

