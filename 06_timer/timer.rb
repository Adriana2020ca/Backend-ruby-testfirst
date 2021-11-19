class Timer
  attr_accessor :seconds
  #write your code here
  def initialize
    @seconds =0
  end
  def seconds=(seconds)
    @seconds =seconds
  end
  def time_string
    sec =@seconds % 60
    min =@seconds / 60 % 60
    hr =@seconds/ 60 / 60
    "#{padded(hr)}:#{padded(min)}:#{padded(sec)}"
  end
  def padded(a)
    a < 10 ? '0'+ a.to_s : a.to_s
  end
end


