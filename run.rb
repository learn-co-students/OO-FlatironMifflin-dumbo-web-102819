require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("John", "Science", 73)
m2 = Manager.new("Sky", "CSS", 42)
m3 = Manager.new("Light", "Law", 12)

e1 = Employee.new("Toyz", 100, m1.name)
e2 = Employee.new("Gray", 90, m1.name)
e3 = Employee.new("Chicken", 1400, m2.name)
e4 = Employee.new("NoName", 110, m1.name)

puts "All departments: "
puts Manager.all_departments

puts "Average Age: "
puts Manager.average_age

binding.pry
puts "done"
