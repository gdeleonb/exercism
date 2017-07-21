class School
  def initialize
    @students = Hash.new
    (1..8).each { |grade| @students[grade] = [] }
  end

  def students(grade)
    @students[grade]
  end

  def add(student, grade)
    enrolled = @students[grade]
    i = 0
    while i < enrolled.length
      break if student < enrolled[i]
      i += 1
    end
    enrolled.insert(i, student)
    @students[grade] = enrolled
  end

  def students_by_grade
    output = []
    keys = @students.keys.sort
    keys.each do |key|
      output.push({:grade => key, :students => @students[key]}) if !@students[key].empty?
    end
    output
  end
end

module BookKeeping
  VERSION = 3
end
