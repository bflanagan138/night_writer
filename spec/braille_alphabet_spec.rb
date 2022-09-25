require 'rspec'
require 'pry'
require './lib/braille_alphabet'
 
RSpec.describe BrailleAlphabet do
   it 'exists' do
       braille_alphabet = BrailleAlphabet.new()
 
       expect(braille_alphabet).to be_a BrailleAlphabet
   end
 
   it 'initializes with an alphabet' do
       braille_alphabet = BrailleAlphabet.new()
# binding.pry
       expect(braille_alphabet.dictionary).to be_a Hash
   end

   it 'can return a braille h' do
        braille_alphabet = BrailleAlphabet.new()
    # binding.pry
        expect(braille_alphabet.dictionary["h"]).to eq ["0.", "00", ".."]
    end

 
end
