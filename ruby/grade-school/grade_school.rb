class School
  def initialize
    @students = Hash.new { |hash, key| hash[key] = [] }
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
    @students.sort.map { |key, val| {grade: key, students: val} }
  end
end

module BookKeeping
  VERSION = 3
end
