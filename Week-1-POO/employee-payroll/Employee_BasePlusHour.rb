require './Employee.rb'

class Employee_BasePlusHour < Employee

  def initialize name, contact, base, hours, hour_amount
    super name, contact
    @base = base
    @hours = hours
    @hour_amount = hour_amount
  end

  def month_payroll
    @base + @hours * @hour_amount
  end

end
