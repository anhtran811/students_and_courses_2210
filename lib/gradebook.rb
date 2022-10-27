class Gradebook
attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end
end





# You have been contracted by the University of Denver to write a program 
# that models gradebooks for its courses. Specifically, 
# it would like you to implement the following features:

# A gradebook can list all students in its courses
# A gradebook can list all students with a grade below a given threshold
# Build upon your code from the first two iterations to complete this task.