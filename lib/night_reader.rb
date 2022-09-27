
    message = File.open(ARGV[0], "r")
    braille_message = message.read
    lines = File.readlines(ARGV[0])
    characters = lines.join
    character_count = characters.length

    writer = File.open(ARGV[1], "w")
    writer.write(braille_message)
    writer.close

    puts "Created 'message.txt' containing 256 characters"
    puts "Created '#{(ARGV[1])}' containing #{(character_count)} characters"
