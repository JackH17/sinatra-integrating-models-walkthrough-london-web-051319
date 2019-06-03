# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def count_of_words
    words = text.split(" ")
    words.count
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
      all_letters_in_string = @text.downcase.gsub(/[^a-z]/, '').split('') #gets rid of spaces and turns it into an array
      letters_to_compare = all_letters_in_string.uniq
      most_used_letter = ""
      letter_count = 0

      letters_to_compare.map do |letter|
        letter_repetitions = all_letters_in_string.count(letter)
        if letter_repetitions > letter_count
          letter_count = letter_repetitions
          most_used_letter = letter
        end
      end

      biggest = [most_used_letter, letter_count]
    end
end
