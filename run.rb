require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'
m1 = Manager.new("Michael", "Sales", 45)
m2 = Manager.new("Dwight", "Tech", 34)
e1 = Employee.new("Jim", 1000, m1)
e2 = Employee.new("Pam", 2000, m2)

#Test your code here


binding.pry
puts "done"
