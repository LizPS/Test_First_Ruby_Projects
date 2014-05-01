class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(n)
    "#{n}".rjust(2, '0')
  end

  def time_string
    hours = padded(seconds/3600)
    minutes = padded((seconds%3600)/60)
    new_seconds = padded(((seconds%3600)%60))
    "#{hours}:#{minutes}:#{new_seconds}"
  end

end
