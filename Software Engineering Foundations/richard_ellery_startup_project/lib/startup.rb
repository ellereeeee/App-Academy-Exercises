require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.keys.include?(title)
  end

  def >(startup)
    @funding > startup.funding
  end

  def hire(employee_name, title)
    if !self.valid_title?(title)
      raise_error
    else
      @employees << Employee.new(employee_name, title)
    end
  end
  
  def size
    self.employees.length
  end

  def pay_employee(employee)
    salary = salaries[employee.title]
    if @funding >= salary
      employee.pay(salary)
      @funding -= salary
    else
      raise_error
    end
  end

  def payday
    self.employees.each { |employee| pay_employee(employee) }
  end
end
