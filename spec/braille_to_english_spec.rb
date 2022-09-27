require 'rspec'
require './lib/braille_to_english'

RSpec.describe BrailleToEnglish do
    it 'exists' do
        braille_to_english = BrailleToEnglish.new()

        expect(braille_to_english).to be_a BrailleToEnglish
    end

    it 'initializes with an alphabet' do
        braille_to_english= BrailleToEnglish.new()
 # binding.pry
        expect(braille_to_english.braille_to_english_dictionary).to be_a Hash
    end

    it 'can return an english a' do
        braille_to_english= BrailleToEnglish.new()
    # binding.pry
        expect(braille_to_english.braille_to_english_dictionary["0....."]).to eq ('a')
    end
end