require '../lib/converter'
require '../lib/braille_alphabet'

    message = File.open(ARGV[0], "r")
    incoming_message = message.read
    lines = File.readlines(ARGV[0])
    line_count = lines.size
    characters = lines.join
    character_count = characters.length

    braille_message = incoming_message
    writer = File.open(ARGV[1], "w")
    # require 'pry'; binding.pry
    self.converter = Converter.new(braille_message, alphabet)
    writer.write(braille_message)

    writer.close
    puts "Created 'braille.txt' containing 256 characters"
    puts "Created '#{(ARGV[1])}' containing #{(character_count)} characters"
