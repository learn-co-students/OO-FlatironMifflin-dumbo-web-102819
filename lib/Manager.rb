class Manager
    attr_reader :name, :department, :age 
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
        Employee.all.select do |instance|
            instance.manager == self
        end
    end 
    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end 
    def self.all_departments
        @@all.map { |instance| instance.department }.uniq
    end 
    def self.average_age
        count = 0
        sub_total = 0.00
        @@all.each do |instance|
            sub_total += instance.age 
            count += 1
        end 
        sub_total / count 
    end 
end
