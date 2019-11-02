class Manager
    @@all = []
    attr_accessor :name, :department, :age

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select{|employee|
            employee.manager == self
        }
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all
        @@all
    end

    def self.all_departments
        @@all.map{|manager|
            manager.department
    }.uniq
    end

    def self.average_age
        @@all.reduce(0){|sum, manager|
            sum += manager.age
            sum
        }/@@all.length.to_f
    end
end
