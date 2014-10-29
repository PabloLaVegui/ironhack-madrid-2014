require './Employee.rb'

class Employee_Hour < Employee

  def initialize name, contact, hours, hour_amount
    super name, contact
    @hours = hours
    @hour_amount = hour_amount
  end

  def month_payroll
    @hours * @hour_amount
  end

end
