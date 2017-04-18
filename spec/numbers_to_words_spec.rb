require('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do
  # it('successfully returns a one digit number') do
  #   expect(6.numbers_to_words()).to(eq('six'))
  # end
  # it('successfully returns a two digit number') do
  #   expect(13.numbers_to_words()).to(eq('thirteen'))
  # end
  # it('successfully returns a three digit number') do
  #   expect(123456789.numbers_to_words()).to(eq('one hundred twenty three million four hundred fifty six thousand seven hundred eighty nine'))
  # end
end
describe('String#words_to_numbers') do

  it('successfully returns a three digit number') do
    expect('six million five hundred fifty thousand five hundred fifty two'.words_to_numbers()).to(eq(6550552))
  end
end
