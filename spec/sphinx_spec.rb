require('rspec')
require('pry')
require('sphinx')

RSpec.describe('Sphinx#riddle') do
  question = Sphinx.new()
  it('returns an answer to the riddle') do
    expect(question.riddle).to(eq(question.riddles[question.randomIndex]))
  end
end
