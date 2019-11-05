require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

mike_scott = Manager.new("Michael Scott", "Accounting", 42)
jennifer = Manager.new("Jennifer", "Human Resource", 38)

employee1 = Employee.new("John Doe", 4_500, mike_scott)
employee2 = Employee.new("Jane Doe", 4_850, mike_scott)
employee3 = Employee.new("Dwight Schrute", 4_200, mike_scott)

employee4 = Employee.new("Susan", 3_800, jennifer)
employee5 = Employee.new("Jimmy", 4_000, jennifer)
employee6 = Employee.new("Gale", 3_600, jennifer)


mike_scott.hire_employee("Jim Halpert", 75_000)
Manager.average_age

binding.pry
puts "done"
