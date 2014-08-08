require_relative 'person.rb'
require_relative 'pattern.rb'
require_relative 'first_initial_dot_last_initial.rb'
require_relative 'first_initial_dot_last_name.rb'
require_relative 'first_name_dot_last_name.rb'
require_relative 'first_name_dot_last_initial.rb'

puts "The predicted emails are:"

@peter = Person.new
@peter.first_name = "Peter" 
@peter.last_name = "Wong"
@peter.domain = "alphasights.com"
puts @peter.predict_email

@craig = Person.new
@craig.first_name = "Craig" 
@craig.last_name = "Silverstein" 
@craig.domain = "google.com"
puts @craig.predict_email

@steve = Person.new
@steve.first_name = "Steve" 
@steve.last_name = "Wozniak" 
@steve.domain = "apple.com"
puts @steve.predict_email

@barack = Person.new
@barack.first_name = "Barack" 
@barack.last_name = "Obama" 
@barack.domain = "whitehouse.gov" 
puts @barack.predict_email

