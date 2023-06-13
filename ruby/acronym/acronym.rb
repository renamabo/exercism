class Acronym
    attr_reader :text,
                :abbreviation

    def initialize(text)
        @text = text
        @abbreviation = String.new("")   
    end

    def self.abbreviate(text)
        new(text).abbreviate
    end

    def abbreviate
        remove_dash_delimiter(text)
        split_text = text.split(" ")
        split_text.each { |word| @abbreviation << word[0].upcase }
        @abbreviation
    end
    
    def remove_dash_delimiter(text)
        text.gsub!("-", " ") if text.include?("-")
    end
end