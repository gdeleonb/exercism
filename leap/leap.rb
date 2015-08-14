class Year

  def self.leap?(year)
    leap =

    leap = true if year % 4 == 0
    leap = false if year % 100 == 0
    leap = true if year % 400 == 0

    'Yes, ' + year.to_s + ' is a leap year' if leap == true

  end

end
