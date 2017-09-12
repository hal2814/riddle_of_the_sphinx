require('rspec')
require('pry')
require('sphinx')

RSpec.describe('Sphinx#riddle') do
  question = Sphinx.new()
  it('returns an answer to the riddle') do
    expect(question.@riddles.to(eq())
  end
end
