require "./lib/scrabble" 
  
describe Scrabble do

  describe '#score' do
    it "accepts letter 'a' and returns value 1" do
      scrabble = Scrabble.new("a")
      expect(scrabble.score).to eq 1
    end

    it 'accepts letter "f" and returns value 4' do
      scrabble = Scrabble.new("f")
      expect(scrabble.score).to eq 4
    end

     it 'accepts a word and returns the total value' do
      scrabble = Scrabble.new("street")
      expect(scrabble.score).to eq 6
    end
  end

end

