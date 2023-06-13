require 'pry'
# given x (x is a tonic/starting note)
# generate a scale starting with the tonic and following the interval pattern.
# Pattern: 12 notes total.
#          A -> A# -> B ->  C -> C# ->    D -> D# -> E  ->  F -> F# -> G -> G#
# Steps:    Half, half, whole, half, half, half, half, whole, half, half, half
# 2 halves, 1 whole, 4 halves, 1 whole, 3 halves 

class Scale
    NONE = ['C major', 'a minor']
    SHARPS = ['C chromatic', 'G chromatic', 'D chromatic', 'A chromatic', 'E chromatic', 'B chromatic', 'F# major', 'e minor', 'b minor', 'f# minor', 'c minor', 'g# minor', 'd# minor']
    FLATS = ['F chromatic', 'Bb chromatic', 'Eb chromatic', 'Ab chromatic', 'Db chromatic', 'Gb major', 'd minor', 'g minor', 'c minor', 'f minor', 'bb minor', 'eb minor']

    attr_reader :tonic,
                :scale_type,
                :step_pattern

    def initialize(tonic, scale_type, *step_pattern)
        @tonic = tonic
        @scale_type = scale_type
        @step_pattern = step_pattern
    end

    def name
        "#{tonic.upcase} " + "#{scale_type.to_s}"
    end

    def pitches
        sharp_expression = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
        flat_expression = ['A', 'Bb', 'B', 'C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab']

        # Need to find an enumerator method that will iterate through the appropriate expression* and pull out elements
        # where the elements indexes are spaced according to the step_pattern. In addition, the array will only ouput
        # a number of elements that matches the scale_pattern.length. 

        # *: to find the appropriate expression, they will either need to be added to SHARPS or FLATS or operate
        # within the `else` of this if block.
        if NONE.include?(name)
            scale_index = sharp_expression.index { |l| l == tonic }
            sharp_expression.rotate(scale_index)
        elsif SHARPS.include?(name)
            scale_index = sharp_expression.index { |l| l == tonic }
            sharp_expression.rotate(scale_index)
        elsif FLATS.include?(name)
            scale_index = flat_expression.index { |l| l == tonic }
            flat_expression.rotate(scale_index)
        else 
        end
    end
end