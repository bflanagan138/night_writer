class Converter
    attr_reader :message,
                :braille_alphabet

    def initialize(message, braille_alphabet)
        @message = message
        @braille_alphabet = braille_alphabet
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

    def line_length_limit
        eighty_char_limit = @message.scan(/.{1,40}/).join("\n")
        @message = eighty_char_limit if @message.size > 40
    end
end