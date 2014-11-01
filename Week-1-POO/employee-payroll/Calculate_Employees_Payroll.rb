require './Employee_Input_File.rb'
require './File_Output.rb'
require './Message.rb'

class Calculate_Employee_Payroll

  def initialize
    @file
    @employees = []
  end

  def input_file file_name
    @file = Employee_Input_File.new(file_name)
    @employees = @file.employees
  end

  def write_output_file file_name
    output_file = File_Output.new(file_name, @employees)
    output_file.write
  end

  def notificate_payroll_to_all
    @employees.each do |e|
      message = Message.new(e.contact_data)
      message.send
      puts "Send message to " + e.name + " via " + message.type
    end
  end

end

employee_payroll = Calculate_Employee_Payroll.new
employee_payroll.input_file('employeeroll.txt')
employee_payroll.write_output_file('payroll_output.txt')

employee_payroll.notificate_payroll_to_all
