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

  it 'can have courses' do
    gradebook = Gradebook.new("Corey")
    calculus = Course.new("Calculus", 2)
    english = Course.new("English", 3)

    gradebook.add_course(calculus)
    gradebook.add_course(english)

    expect(gradebook.courses).to eq([calculus, english])
  end
end