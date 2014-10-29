require './Employee_Base.rb'
require './Employee_Hour.rb'
require './Employee_BasePlusHour.rb'

class File_Output

  def initialize name, employees
    @name = name
    @employees = employees
  end

  def write
    File.open(@name, 'a') do |f|
      @employees.each do |e|
        f.write "#{e.name} --> #{e.month_payroll}\n"
      end


    end
  end

end
