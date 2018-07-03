require_relative '../film.rb'

describe 'Film' do
  describe '.new' do
    it 'create film from params' do
      fixtures = File.dirname(__FILE__) + '/fixtures/01.txt'
      film = Film.new(fixtures)

      expect(film.title).to eq '5 Элемент'
      expect(film.director).to eq 'Люк Бессон'
      expect(film.date).to eq 1995
    end
  end

  describe '#to_s' do
    it 'return string to user' do
      fixtures = File.dirname(__FILE__) + '/fixtures/01.txt'
      film = Film.new(fixtures)

      expect(film.to_s).to eq 'Люк Бессон - 5 Элемент (1995)'
    end
  end
end
