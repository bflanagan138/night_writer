require '../lib/converter'

message = File.open(ARGV[0], "r")
incoming_message = message.read
lines = File.readlines(ARGV[0])
line_count = lines.size
characters = lines.join
character_count = characters.length

braille_message = incoming_message
writer = File.open(ARGV[1], "w")
writer.write(braille_message)

#call converter methods

writer.close
puts "Created 'braille.txt' containing 256 characters"
puts "Created '#{(ARGV[1])}' containing '#{(character_count)}' characters"