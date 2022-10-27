require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  it 'exists' do
    gradebook = Gradebook.new("Corey")

    expect(gradebook).to be_a(Gradebook)
  end

  it 'has an instructor' do
    gradebook = Gradebook.new("Corey")

    expect(gradebook.instructor).to eq("Corey")
  end

  it 'starts without courses' do
    gradebook = Gradebook.new("Corey")

    expect(gradebook.courses).to eq([])
  end

  it 'can add courses' do
    gradebook = Gradebook.new("Corey")
    calculus = Course.new("Calculus", 2)
    english = Course.new("English", 3)

    gradebook.add_course(calculus)
    gradebook.add_course(english)

    expect(gradebook.courses).to eq([calculus, english])
  end

  it 'can list students in the courses' do
    gradebook = Gradebook.new("Corey")
    calculus = Course.new("Calculus", 2)
    english = Course.new("English", 1)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    student3 = Student.new({name: "Amy", age: 22})

    calculus.enroll(student1)
    calculus.enroll(student2)
    english.enroll(student3)

    expect(gradebook.add_course(calculus)).to eq([student1, student2])
    expect(gradebook.add_course(english)).to eq([student3])
  end
  end
end