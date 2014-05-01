class Temperature

  def ftoc(f_temp)
    (f_temp - 32.0)*5/9
  end

  def ctof(c_temp)
    (c_temp *9.0/5)+ 32
  end

  def from_celsius (temp)
    c_toc(temp)
  end

  def from_fahrenheit (temp)
    f_toc(temp)
  end

  def in_celsius (temp)
  c_toc(temp)
  end

  def in_fahrenheit(temp)
  f_toc(temp)
  end

end
