class Employee
    attr_accessor :salary 
    attr_reader :name, :manager 
    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        all.select do |employee|
            employee.salary > amount
        end
    end

    def self.find_by_department(department)
        all.find do |employee|
            employee.manager.department == department
        end
    end

    def tax_bracket
        bracket =   self.class.all.select do |employee|
                        employee.salary >= self.salary - 1_000 && employee.salary <= self.salary + 1_000
                    end
        bracket.delete(self)
        bracket
    end
end
