require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

newRiddle = Sphinx.new()
rid = newRiddle.riddle
get('/') do
  newRiddle = Sphinx.new()
  rid = newRiddle.riddle
  @the_riddle = rid
  erb(:input)
end

# newRiddle.output_question
get('/output') do
  @the_riddle = rid
  @answer = params.fetch("answer")
  the_answer = newRiddle.answer_riddle?(@answer)

  if the_answer
    @string_to_display = "You are correct, you need four correct answers to proceed..."
  else
    @string_to_display = "Incorrect! One more mistake and I'll throw you in the pit!"
  end
  newRiddle = Sphinx.new()
  rid = newRiddle.riddle
  erb(:output)
end
