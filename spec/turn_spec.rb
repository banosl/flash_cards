require './lib/card'
require './lib/turn'

RSpec.describe Turn do

#Test 1
#it exists
    it 'is a turn' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography, 1)
        turn = Turn.new("Juneau", card)


        expect(turn).to be_instance_of(Turn)
    
    end

#Test 2
# it has a card
    it 'turn has a card' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography, 1)
        turn = Turn.new("Juneau", card)
        turn.card

        expect(turn.card).to eq(card)

    end

#Test 3
#it has a guess
    it 'has a guess' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography, 1)
        turn = Turn.new("Juneau", card)

        turn.guess
    
    expect(turn.guess).to eq("Juneau")
    end

#Test 4
#the guess is correct
    it 'the guess is correct' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography, 1)
        turn = Turn.new("Juneau", card)

        turn.correct?

        expect(turn.correct?).to be true
    end

#Test 5
#feedback for the correct guess is Correct!
    it "feedback for a correct answer is 'correct'" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography, 1)
        turn = Turn.new("Juneau", card)
        turn.feedback

        expect(turn.feedback).to eq("Correct!")
    
    end

#Test 6
#The guess is incorrect
    it "the guess is wrong" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography, 1)
        turn = Turn.new("Denver", card)
        turn.correct?

        expect(turn.correct?).to be false
    end

#Test 7
#feedback for the wrong gues is Incorrect
    it "Feedback for wrong answer is 'Incorrect.'" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography, 1)
        turn = Turn.new("Denver", card)
        turn.feedback

        expect(turn.feedback).to eq("Incorrect. :(")
    end

end
