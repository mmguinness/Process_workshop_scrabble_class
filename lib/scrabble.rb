class Scrabble
  def initialize(word)
    @one = [ "A", "E", "I", "O", "U", "L", "N", "R", "S", "T" ]
    @two = [ "D", "G" ]
    @three = [ "B", "C", "M", "P" ]
    @four = [ "F", "H", "V", "W", "Y" ]
    @five = [ "K" ]
    @eight = [ "J", "X" ]
    @ten = [ "Q", "Z" ]
    @total = []
    @word = word
  end

  def format_word    
    if @word == nil then @word = "" end
    @word = @word.upcase.split("")
  end

  def score
    format_word

    @word.each do |letter|
      if @one.include?(letter)
        @total << 1
      elsif @two.include?(letter)
        @total << 2
      elsif @three.include?(letter)
        @total << 3
      elsif @four.include?(letter)
        @total << 4
      elsif @five.include?(letter)
        @total << 5
      elsif @eight.include?(letter)
        @total << 8
      elsif @ten.include?(letter)
        @total << 10
      end
    end

    return @total.sum
  end

end