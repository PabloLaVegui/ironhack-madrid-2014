require 'pry'

class STR_Time

  def initialize h, m, s, ms
    @h, @m, @s, @ms = h.to_i, m.to_i, s.to_i, ms.to_i
  end

  def to_s
    "#{@h.to_s.rjust(2,'0')}:#{@m.to_s.rjust(2,'0')}:#{@s.to_s.rjust(2,'0')},#{@ms.to_s.rjust(3,'0')}"
  end

  def add_milisecs msecs
    @ms += msecs
    if @ms > 999
      @s += @ms / 1000
      @ms = @ms % 1000
    end
    if @s > 59
      @m += @s / 60
      @s  = @s % 60
    end
    if @m > 59
      @h += @m / 60
      @m  = @m % 60
    end

    self.to_s
  end

end



class SRT_File

  def initialize name
    @name = name
  end

  def add_milisecs_to_file milisecs, output_file_name
    File.open(output_file_name, 'a') do |f_out|
      File.open(@name, 'r') do |f|

        while line = f.gets
          if is_time? line
            line = sum_milisecs(line, milisecs)
          end
          f_out.write line
        end

      end
    end
  end

  def find_typos(diccionary_file, output_file_name)
    typo = []
    File.open(diccionary_file, 'r') do |f|
      while line = f.gets
        typo.push(line.chomp)
      end
    end
    #binding.pry
  end

  private

    def is_time? line
      line.include?('-->')
    end

    def sum_milisecs line, milisecs
      hours_init    = line[0..1]
      mins_init     = line[3..4]
      secs_init     = line[6..7]
      milisecs_init = line[9..11]
      init_time = STR_Time.new(hours_init, mins_init, secs_init, milisecs_init)

      hours_end     = line[17..18]
      mins_end      = line[20..21]
      secs_end      = line[23..24]
      milisecs_end  = line[26..28]
      end_time = STR_Time.new(hours_end, mins_end, secs_end, milisecs_end)

      "#{init_time.add_milisecs(milisecs)} --> #{end_time.add_milisecs(milisecs)}\n"

      #binding.pry
    end

end



file = SRT_File.new('subs.srt')
#file.add_milisecs_to_file(2500, 'newsubs.srt')
file.find_typos('potential_typos.txt', 'typos_found.txt')
