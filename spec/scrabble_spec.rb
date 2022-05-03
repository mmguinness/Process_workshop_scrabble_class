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

    it 'accepts a word in lower case letters and returns the total value' do
      scrabble = Scrabble.new("street")
      expect(scrabble.score).to eq 6
    end

    it 'accepts a word in capital letters and returns the total value' do
      scrabble = Scrabble.new("OXYPHENBUTAZONE")
      expect(scrabble.score).to eq 41
    end

    it 'accepts an empty string and returns the zero' do
      scrabble = Scrabble.new(" ")
      expect(scrabble.score).to eq 0
    end

    it 'accepts nil and returns the zero' do
      scrabble = Scrabble.new(nil)
      expect(scrabble.score).to eq 0
    end

    it 'accepts " \t\n" and returns the zero' do
      scrabble = Scrabble.new(" \t\n")
      expect(scrabble.score).to eq 0
    end
  end

end

