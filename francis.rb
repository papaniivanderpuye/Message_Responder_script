# frozen_string_literal: true

# File Containing Francis Class, a simple message responder.

# Class that contains a method for responding to simple messages
class Francis
    # Initializes Francis object
    #
    # @return [Type] description_of_returned_object
    def initialize; end

    # Returns a response for a given message
    #
    # @param statement [String] message that the function should respond to
    # @return [String] response to the given message
    def yo(statement)
        if (statement =~ /\A\s*\Z/) != nil
            'See if I care!'
        elsif ((statement =~ /[A-Z]/) != nil) && (statement == statement.upcase)
            'Chill!'
        elsif statement[-1] == '?'
            'Sure.'
        else
            'Whatevs.'
        end
    end
end
