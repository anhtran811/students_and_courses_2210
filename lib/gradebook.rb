class Gradebook
attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_students(student)
  end
end


# A gradebook can list all students in its courses
# A gradebook can list all students with a grade below a given threshold