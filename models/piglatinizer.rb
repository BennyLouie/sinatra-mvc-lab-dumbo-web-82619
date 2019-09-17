class PigLatinizer
    attr_accessor :words

    def initialize
        @words
    end

    def piglatinize(sentence)
        words = sentence.split(" ")
        pigwords = words.map do |word|
            piglatinize_word(word)
        end
        pigwords.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"
        else
            consonants = []
            i = 0
            until ["a", "e", "i", "o", "u"].include?(word[i])
                consonants << word[i] 
                i += 1
            end
            "#{word[consonants.length .. -1] +consonants.join + "ay"}"
        end
    end


end