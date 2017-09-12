class Sphinx
  @@correct = 0
  @@wrong = 0

  attr_accessor :riddles, :question, :answers, :randomIndex
  def initialize
    @question
    @riddles
    @answers
    @randomIndex
  end

  def riddle_gen
    rand(0..12)
  end

  def initialize_riddles
    ridddle1 = "The more you take, the more you leave behind. What am I?"
    answer1 = "footsteps"

    ridddle2 = " a mother, and father have six daughters and each daughter has one brother. How many people are in the their family?"
    answer2 = "9"

    ridddle3 = "Tall I am young, Short I am old, While with life I glow, Wind is my foe. What am I?"
    answer3 = "candle"

    ridddle4 = "I'm strong as a rock, but a word can destroy me. What am I?"
    answer4 = "silence"  #"paper"

    ridddle5 = "Without fingers I point, without arms I strike, without feet I run. What am I?"
    answer5 = "clock"

    ridddle6 = "What has a head and a tail, but no body?"
    answer6 = "coin"

    ridddle7 = "Which creature walks on four legs in the morning, two legs in the afternoon, and three legs in the evening?"
    answer7 = "man"

    ridddle8 = "Which word in the dictionary is spelled incorrectly?"
    answer8 = "incorrectly"

    ridddle9 = "If you have me, you want to share me. If you share me, you haven't got me. What am I?"
    answer9 = "secret"

    ridddle10 = "How many of each species did Moses take on the ark with him?"
    answer10 = "none"

    ridddle11 = "Imagine you are in a dark room. How do you get out?"
    answer11 = "stop"

    ridddle12 = "A box without hinges, key, or lid, Yet golden treasure inside is hid."
    answer12 = "egg"

    ridddle13 = "Tear one off and scratch my head what was red is black instead. What am I?"
    answer13 = "match"

    @riddles = [ridddle1,ridddle2,ridddle3,ridddle4,ridddle5,ridddle6,ridddle7,ridddle8,ridddle9,ridddle10,ridddle11,ridddle12,ridddle13]
    @answers = [answer1,answer2,answer3,answer4,answer5,answer6,answer7,answer8,answer9,answer10,answer11,answer12,answer13]
  end

  def riddle
    initialize_riddles
    @randomIndex = riddle_gen
    @question = @riddles[@randomIndex]
  end

  def answer_riddle?(answer)
    answer = answer.downcase
    index = @randomIndex
    answerArr = answer.split(" ")
    if answerArr.include? @answers[index]
      return true
    else
      return false
    end
  end

  def output_question
    return @question
  end

end
