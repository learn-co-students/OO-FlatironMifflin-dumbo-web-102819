require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
tim = Manager.new("Tim","IT",37)
bob = Manager.new("Bob","Accounting",35)
shiela = Manager.new("Shiela","Operations",65)

max = Employee.new("Max",45_000,tim)
deborah = Employee.new("Deborah",43_000,tim)
denzel = Employee.new("denzel",46_000,bob)
tristan = Employee.new("tristan",44_000,bob)
pascal = Employee.new("pascal",59_000,shiela)
marcus = Employee.new("marcus",57_000,shiela)





binding.pry
puts "done"
