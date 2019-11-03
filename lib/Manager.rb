class Manager

  attr_reader :name
  attr_accessor :age, :department

  @@all = []

  def self.all
    @@all
  end

  def initialize
    @@all << self
  end

  def employees
    Employee.all.select {|name| name.manager == self}
  end

  def hire_employees (name, salary)
    Employee.all.map do
      |employee|
      if employee.name == name
        employee.manager = self
        employee.salary = salary
      end
    end
  end

  def self.all_departments
    @@all.map do
      |manager|
      manager.department
    end
  end

  def self.average_age
    age_total = 0.0
    age_list = @@all.map do {|man| man.age}
    age_list.length.times {|list_age| age_total += list_age}
    age_total /= age_list
  end




end
