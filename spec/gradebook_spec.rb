require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  it 'exists' do
    gradebook = Gradebook.new("Corey")

    expect(gradebook).to be_a(Gradebook)
  end
end