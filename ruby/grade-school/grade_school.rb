class School
  def initialize
    @students = {}
  end

  def students(grade)
    enrolled = @students[grade]
    if enrolled == nil
      return []
    else
      return enrolled
    end
  end

  def add(student, grade)
    enrolled = @students[grade]
    if enrolled == nil
      @students[grade] = [student]
    else
      @students[grade] = enrolled.push(student).sort
    end
  end

  def students_by_grade
    output = []
    keys = @students.keys.sort
    keys.each do |key|
      output.push({:grade => key, :students => @students[key]})
    end
    output
  end
end

module BookKeeping
  VERSION = 3
end
