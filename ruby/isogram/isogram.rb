require 'pry'

class Isogram
    class << self
        def isogram?(input)
            return true if input.empty?
            remove_dashes(input)
            remove_whitespace(input)
            input.upcase!
            split_word = input.split("")
            !letters_hash(split_word).any? { |k, v| v > 1 }
        end

        def letters_hash(array)
            array.tally
        end

        def remove_dashes(input)
            input.gsub!("-", "") if input.include?("-")
        end

        def remove_whitespace(input)
            input.delete!(" ") if input.include?(" ")
        end
    end
end