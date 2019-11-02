class Employee
    @@all = []
    attr_accessor :name, :salary, :manager

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        @manager.name
    end

    def self.paid_over(amount)
        @@all.select{|employee|
            employee.salary > amount
        }
    end

    def self.find_by_department(department)
        @@all.find{|employee|
            employee.manager.department == department
        }
    end

    def tax_bracket
        bracket_max = self.salary + 1000
        bracket_min = self.salary - 1000
        @@all.select{|employee|
            employee.salary >= bracket_min && employee.salary <= bracket_max
        }
    end



end
