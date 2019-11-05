class Manager

    @@all = []
    @@department = []

    attr_reader :name, :age, :department

    def initialize(name, department, age)
        @name = name
        @age = age
        @department = department

        @@all << self
    end


    def self.all
        @@all
    end

    def employees
        Employee.all.select do |employee_instance|
            employee_instance.manager == self
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map do |manager_instance|
            manager_instance.department
        end
    end

    def self.average_age
        total = 0
        self.all.each do |manager_instance|
            total += manager_instance.age
        end
        (total / self.all.length).round
    end


end




