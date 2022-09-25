class Converter
    attr_reader :message,
                :braille_alphabet

    def initialize(message, braille_alphabet)
        @message = message
        @braille_alphabet = braille_alphabet
        # binding.pry
    end

    def char_to_braille(character)
        @braille_alphabet.dictionary[character].join("\n")
    end

    def word_to_braille
        braille_message_array = @message.split("").map do |character| 
            char_to_braille(character)
        end
        message = ''
        3.times do |i|
            braille_message_array.each do |element|
                message += element.split("\n")[i]
            end
        message += "\n" unless i == 2
        end
        message 
    end
#WIP - breaking into 80 char lines
    def line_length_limit
        @word_to_braille
        eighty_char_limit = @message.scan(/.{1,40}/).join("\n")
        # end
        binding.pry
    end
end