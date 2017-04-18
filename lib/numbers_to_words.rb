class Fixnum
  define_method(:numbers_to_words) do
    single_digits_and_teens = {
      0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9=> 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
    }
    numbers = [
      single_digits = {
        0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9=> 'nine'
      }
      double_digits = {
        10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety'
      },
      triple_digits = {
        100 => 'one hundred', 200 => 'two hundred', 300 => 'three hundred', 400 => 'four hundred', 500 => 'five hundred', 600 => 'six hundred', 700 => 'seven hudred', 800 => 'eight hundred', 900 => 'nine hundred'
      }
    ]
    if self.<(20)
    single_digits_and_teens.fetch(self)
    else
    number_array = self.to_s.split().reverse()
    number_array.each() do |number|
      numbers.each() do |hash|
        hash.fetch(number.to_i())
      end
    end
  end
end
