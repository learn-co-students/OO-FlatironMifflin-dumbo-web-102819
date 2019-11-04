class Manager
	attr_accessor :name, :department, :age

	@@all = []

	def initialize(name, department, age)
		@name = name
		@department = department
		@age = age

		@@all << self
	end

	def self.all
		@@all
	end

	def employees
		Employee.all.select do |person|
			person.manager_name = self.name
		end
	end

	def hire_employee(name, salary)
		Employee.new(name, salary, self.name)
	end

	def self.all_departments
		@@all.map do |manager|
			manager.department
		end 
	end

	def self.average_age
		ages = @@all.map do |manager|
			manager.age
		end 

		sum = 0.0
		ages.each do |age|
			sum += age
		end

		sum / ages.count
	end
end
