class BrailleToEnglish
    attr_reader :braille_to_english_dictionary
    
    def initialize
        @braille_to_english_dictionary = {
        "0....." => 'a',
        "0.0..." => 'b',
        "00...." => 'c',
        "00.0.." => 'd',
        "0..0.." => 'e',
        "000..." => 'f',
        "0000.." => 'g',
        "0.00.." => 'h',
        ".00..." => 'i',
        ".000.." => 'j',
        "0...0." => 'k',
        # 'l' => ["0.", "0.", "0."],
        # 'm' => ["00", "..", "0."],
        # 'n' => ["00", ".0", "0."],
        # 'o' => ["0.", ".0", "0."],
        # 'p' => ["00", "0.", "0."],
        # 'q' => ["00", "00", "0."],
        # 'r' => ["0.", "00", "0."],
        # 's' => [".0", "0.", "0."],
        # 't' => [".0", "00", "0."],
        # 'u' => ["0.", "..", "00"],
        # 'v' => ["0.", "0.", "00"],
        # 'w' => [".0", "00", ".0"],
        # 'x' => ["00", "..", "00"],
        # 'y' => ["00", ".0", "00"],
        # 'z' => ["0.", ".0", "00"],
        # ' ' => ["..", "..", ".."], 
        # ',' => ["..", "0.", ".."],
        # ';' => ["..", "0.", "0."],
        # ':' => ["..", "00", ".."],
        # '.' => ["..", "00", ".0"],
        # '!' => ["..", "00", "0."],
        # '?' => ["..", "0.", "00"],
    }
    end
end
  