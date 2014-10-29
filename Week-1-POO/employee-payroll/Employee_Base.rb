require './Employee.rb'

class Employee_Base < Employee

  def initialize name, contact, base
    super name, contact
    @base = base
  end

  def month_payroll
    @base
  end

end
