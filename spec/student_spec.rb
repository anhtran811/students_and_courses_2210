require './lib/student'

RSpec.describe Student do
  it 'exists' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_a(Student)
  end

  it 'has a name' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.name).to eq("Morgan")
  end

  it 'has an age' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.age).to eq(21)
  end

  it 'starts without scores' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.scores).to eq([])
  end

  it 'can log scores' do
    student = Student.new({name: "Morgan", age: 21})

    student.log_score(89)
    student.log_score(78)

    expect(student.scores).to eq([89, 78])
  end

  it 'can have an average grade' do
    student = Student.new({name: "Morgan", age: 21})

    student.log_score(89)
    student.log_score(78)

    expect(student.grade).to eq(83.5)
  end
end