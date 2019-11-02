require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Josh", "Marketing", 53)
m2 = Manager.new("Clyde", "Marketing", 62)
m3 = Manager.new("Elijah", "Accounting", 33)
m4 = Manager.new("Michelle", "Logistics", 26)
m5 = Manager.new("Micah", "Administration", 48)
m6 = Manager.new("Zack", "Intern", 23)

m1.hire_employee("Mark", 80_000)
m1.hire_employee("Alice", 79_000)
m1.hire_employee("Rick", 78_999)
m1.hire_employee("The Crushinator", 120_000)

m2.hire_employee("Bender", 200_000)
m2.hire_employee("Leela", 140_000)
m2.hire_employee("Fry", 38_000)
m2.hire_employee("Amy Wong", 50_000)
m2.hire_employee("Professor", 81_000)
m2.hire_employee("Bender Again", 200_000)




binding.pry
puts "done"
