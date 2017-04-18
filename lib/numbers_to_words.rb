class Fixnum
  define_method(:numbers_to_words) do
    position = {
      4 => ' trillion', 3 => ' billion', 2=> ' million', 1=> ' thousand', 0=> ''
    }
    numbers = [
      triple_digits = {
        900 => 'nine hundred', 800 => 'eight hundred', 700 => 'seven hundred', 600 => 'six hundred', 500 => 'five hundred', 400 => 'four hundred', 300 => 'three hundred', 200 => 'two hundred', 100 => 'one hundred'
      },
      double_digits = {
        90 => 'ninety', 80 => 'eighty', 70 => 'seventy', 60 => 'sixty', 50 => 'fifty', 40 => 'forty', 30 => 'thirty', 20 => 'twenty'
      },
      teens = {
        19 => 'nineteen', 18 => 'eighteen', 17 => 'seventeen', 16 => 'sixeen', 15 => 'fifteen', 14 => 'fourteen', 13 => 'thirteen', 12 => 'twelve', 11 => 'eleven'
      },
      single_digits = {
        9 => 'nine', 8 => 'eight', 7 => 'seven', 6 => 'six', 5 => 'five', 4 => 'four', 3 => 'three', 2 => 'two', 1=> 'one'
      }
    ]

    split_numbers = []
    self.to_s().split("").reverse().each_slice(3) do |val|
      split_numbers.push(val.reverse().join("").to_i())
    end

    answer_arr = []
    i = split_numbers.length
    split_numbers.length.times() do
      limit = split_numbers[i-1]
      answer = ""
      numbers.each_with_index() do |hash, i|
        hash.each() do |key, value|
          if (limit-key).>=0
            limit -= key
            if i==0
              answer.concat(value)
            else
              answer.concat(" ")
              answer.concat(value)
            end
          end
        end
      end
      answer.concat(position.fetch(i-1))
      answer_arr.push(answer)
      i = i-1
    end
    answer_arr.join(" ")
  end
end
