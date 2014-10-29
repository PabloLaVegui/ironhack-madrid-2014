require './Employee_Base.rb'
require './Employee_Hour.rb'
require './Employee_BasePlusHour.rb'

class Employee_Input_File

  attr_accessor :employees

  def initialize name
    @name = name
    @employees = set_employees
  end

  def set_employees
    arr_employees = []
    File.open(@name, 'r') do |f|
      while line = f.gets
        employee = line_to_employee(line)
        arr_employees.push(employee)
      end
    end
    @employees = arr_employees
  end

  def line_to_employee line
    employee_data = line.split(" ")
    if employee_data[0] == 'Base'
      employee = Employee_Base.new(employee_data[1],
                                   employee_data[2],
                                   employee_data[3].to_i
                                  )
    elsif employee_data[0] == 'Hour'
      employee = Employee_Hour.new(employee_data[1],
                                   employee_data[2],
                                   employee_data[3].to_i,
                                   employee_data[4].to_i
                                  )
    elsif employee_data[0] == 'BasePlusHour'
      employee = Employee_BasePlusHour.new(employee_data[1],
                                           employee_data[2],
                                           employee_data[3].to_i,
                                           employee_data[4].to_i,
                                           employee_data[5].to_i
                                          )
    end

    employee
  end

end
