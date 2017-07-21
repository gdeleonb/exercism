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
    keys = @students.keys.sort
    out = keys.map do |key|
      if !@students[key].empty?
        {:grade => key, :students => @students[key]}
      end
    end
    out.delete(nil)
    out
  end
end

module BookKeeping
  VERSION = 3
end
