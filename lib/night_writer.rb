message = File.open(ARGV[0], "r")
incoming_message = message.read
lines = File.readlines(ARGV[0])
line_count = lines.size
characters = lines.join
message.close

braille_message = incoming_message
writer = File.open(ARGV[1], "w")
writer.write(braille_message)
writer.close

puts "Created '#{(ARGV[1])}' containing '#{(characters.length)}' characters"