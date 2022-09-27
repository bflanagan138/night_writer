require './lib/converter'
require './lib/braille_alphabet'
require 'pry'

    message = File.open(ARGV[0], "r")
    incoming_message = message.read
    lines = File.readlines(ARGV[0]) * 2
    characters = lines.join
    character_count = characters.length

    writer = File.open(ARGV[1], "w")
    alphabet = BrailleAlphabet.new
    converter = Converter.new(incoming_message, alphabet)
    converter.line_length_limit
    braille_message = converter.word_to_braille
    writer.write(braille_message)

    writer.close
    puts "Created 'braille.txt' containing 256 characters"
    puts "Created '#{(ARGV[1])}' containing #{(character_count)} characters"
