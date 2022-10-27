class Course
attr_reader :name, :capacity, :students, :full

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
  end

  def full?
    @full
  end

  def enroll(student)
    @students << student
  end

  def full
    if @capacity = @students.length
      return true
    else
      @full
    end
  end
end