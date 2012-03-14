module Minitest
  module RspecShouldSyntax
    module Expectations
      def should
        ExpectationHandler.new(self)
      end

      def should_not
        ExpectationHandler.new(self, false)
      end
    end

    class ExpectationHandler
      def initialize(actual, positive = true)
        @actual = actual
        @positive = positive
      end

      def ==(expected)
        @actual.send("#{must_or_wont}_equal", expected)
      end

      def must_or_wont
        if @positive
          "must"
        else
          "wont"
        end
      end
    end
  end
end

class Object
  include Minitest::RspecShouldSyntax::Expectations
end
