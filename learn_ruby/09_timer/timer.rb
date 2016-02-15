class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    arr = []
    arr << @seconds/3600
    arr << @seconds%3600/60
    arr << @seconds%3600%60
    converted = arr.map do |element|
      if (element.to_s).length < 2
        "0" + element.to_s
      else
        element.to_s
      end
    end
    converted.join(":")
  end
end
