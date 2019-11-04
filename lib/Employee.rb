class Employee
	attr_accessor :name,  :salary, :manager_name

	@@all = []

	def initialize(name, salary, manager_name)
		@name = name
		@salary = salary
		@manager_name = manager_name

		@@all << self
	end

	def self.all
		@@all
	end

	def self.paid_over(money)
		@@all.select do |person|
			person.salary > money
		end
	end

	def self.find_by_department(department)
		@@all.find do |person|
			person.manager_name == Manager.all.find do |manager|
				manager.department == department
			end.name
		end
	end

	def tax_bracket
		@@all.select do |person|
			person.salary >= self.salary - 1000 && person.salary <= self.salary + 1000
		end
	end
end
