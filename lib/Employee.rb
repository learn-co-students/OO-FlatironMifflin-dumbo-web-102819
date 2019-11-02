class Employee
    attr_reader :name, :salary, :manager
    @@all = []
    def initialize(name, salary, manager)
        @name = name 
        @salary = salary
        @manager = manager
        @@all << self
    end 
    def manager_name
        @manager.name 
    end 
    def self.all
        @@all
    end 
    def self.paid_over(fixnum_arg)
        @@all.select do |instance|
            fixnum_arg <= instance.salary
        end 
    end
    def self.find_by_department(department_string)
        @@all.find do |instance|
            instance.manager.department == department_string
        end 
    end 
    def tax_bracket
        @@all.select do |instance|
            (self.salary - 1000) <= instance.salary && (self.salary + 1000) >= instance.salary 
        end 
    end 
end
