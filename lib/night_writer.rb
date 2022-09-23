message = File.open(ARGV[0], "r")
incoming_message = message.read
message.close
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join
total_characters = text.length
puts "Created 'braille.txt' containing 256 characters"
puts "Created '#{(ARGV[1])}' containing '#{total_characters}' characters"

braille_message = incoming_message
writer = File.open(ARGV[1], "w")
writer.write(braille_message)
writer.close
