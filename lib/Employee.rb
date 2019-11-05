class Employee

    attr_reader :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        self.all.select do |employee_instance|
            employee_instance.salary > amount
        end
    end

    def self.find_by_department(department)
        self.all.find do |employee_instance|
            employee_instance.manager.department == department
        end
    end

    def tax_bracket
        # self_tax = (self.salary * 0.22).round
        arr = []
        @@all.each do |instance|
            employee_tax = (instance.salary * 0.22).round
            if(employee_tax >= 1000 && employee_tax <= 2000)
                arr << instance
            end
        end
        arr
    end
end
