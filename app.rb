require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get('/') do
  erb(:input)
end
newRiddle = Sphinx.new()
@the_riddle = newRiddle.riddle
# newRiddle.output_question
get('/output') do
  @answer = params.fetch("answer")
  the_answer = newRiddle.answer_riddle?(@answer)

  def result
    if the_answer
      @string_to_display = "You are correct, proceed mortal"
    else
      @string_to_display = "Incorrect! To the spike pit with you!"
    end
  end


  erb(:output)
end
