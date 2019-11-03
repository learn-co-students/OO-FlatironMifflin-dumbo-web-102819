class Employee

  attr_accessor :salary, :manager
  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name
    @salary = 0
    @@all << self
  end

  def manager_name
    @manager.name
  end

  def self.all
    @@all
  end

  def self.paid_over (amount)
    self.all.select{|person| person.salary > amount}
  end

  def self.find_by_department (apartment)
    self.all.select{|person| person.manager.department == department}
  end

  def tax_bracket
    self.all.select{|person| person.salary <= self.salary + 1000 || person.salary >= self.salary - 1000}
  end
end
