class Year
  def self.leap?(year)
    leap = year % 4 == 0 && year % 100 != 0 || year % 400 == 0

    'Yes, ' + year.to_s + ' is a leap year' if leap == true
  end
end
