require 'rspec'
require 'pry'
require './lib/braille_alphabet'
require './lib/converter'
 
RSpec.describe Converter do
   it 'exists' do
        alphabet = BrailleAlphabet.new
    
        converter = Converter.new("h", alphabet)
        expect(converter).to be_a Converter
   end

   it 'initializes with message' do
          alphabet = BrailleAlphabet.new
     
          converter = Converter.new("h", alphabet)
          expect(converter.message).to eq "h"
     end

     it 'initializes with a braille alphabet' do
          alphabet = BrailleAlphabet.new
     
          converter = Converter.new("h", alphabet)
          expect(converter.braille_alphabet).to eq alphabet
     end

     it 'can convert a letter to braille block' do
          alphabet = BrailleAlphabet.new
     
          converter = Converter.new("h", alphabet)
          expect(converter.char_to_braille("h")).to eq "0.\n00\n.."
     end

     it 'can convert word to a braille block' do
          alphabet = BrailleAlphabet.new
     
          converter = Converter.new("ha", alphabet)
          expect(converter.word_to_braille).to eq "0.0.\n00..\n...."

          converter_2 = Converter.new("haha", alphabet)
          expect(converter_2.word_to_braille).to eq "0.0.0.0.\n00..00..\n........"
     end

     it 'can convert words to a braille block' do
          alphabet = BrailleAlphabet.new

          converter_2 = Converter.new("haha ha", alphabet)
          expect(converter_2.word_to_braille).to eq "0.0.0.0...0.0.\n00..00....00..\n.............."
     end
end