require "./lib/scrabble" 
  
describe Scrabble do
  subject(:scrabble) { described_class.new }

  describe '#score' do
    it "accepts one letter and returns value 1" do
      expect(scrabble.score('a')).to eq 1
    end
  end

end

