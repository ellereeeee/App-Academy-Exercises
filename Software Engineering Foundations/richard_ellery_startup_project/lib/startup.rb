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
    !self.valid_title?(title) ? raise("title is invalid!") : @employees << Employee.new(employee_name, title)
  end
  
  def size
    @employees.length
  end

  def pay_employee(employee)
    salary = @salaries[employee.title]
    if @funding >= salary
      employee.pay(salary)
      @funding -= salary
    else
      raise "not enough funding!"
    end
  end

  def payday
    @employees.each { |employee| pay_employee(employee) }
  end

  def average_salary
    sum = 0
    @employees.each { |employee| sum += @salaries[employee.title]}
    sum / (self.size * 1.0)
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(startup)
    # add funding
    @funding += startup.funding

    # merging salaries
    startup.salaries.each do |title, salary|
      @salaries[title] = salary if !@salaries.include?(title)
    end

    # hire employees
    @employees += startup.employees

    # close acquired startup
    startup.close
  end
end
