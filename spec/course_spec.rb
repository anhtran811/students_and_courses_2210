require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exists' do
    course = Course.new("Calculus", 2) 

    expect(course).to be_a(Course)
  end

  it 'has a name' do
    course = Course.new("Calculus", 2) 

    expect(course.name).to eq("Calculus")
  end
  
  it 'has a capacity' do
    course = Course.new("Calculus", 2) 

    expect(course.capacity).to eq(2)
  end

  it 'starts without students' do
    course = Course.new("Calculus", 2) 

    expect(course.students).to eq([])
  end
end


# course.students
# # => []

# course.full?
# # => false

# student1 = Student.new({name: "Morgan", age: 21})
# # => #<Student:0x00007fa0a80ae588...>

# student2 = Student.new({name: "Jordan", age: 29})    
# # => #<Student:0x00007fa0a814f4d8...>

# course.enroll(student1)    

# course.enroll(student2)    

# course.students
# # => [#<Student:0x00007fa0a80ae588...>, #<Student:0x00007fa0a814f4d8...>]

# course.full?
# # => true