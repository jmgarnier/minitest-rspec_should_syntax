module Minitest
  module RspecShouldSyntax
    module Expectations
      def should
        Shoulder.new(self)
      end

      def should_not
        Shoulder.new(self, :not)
      end
    end

    class Shoulder
      def initialize(actual, negation=nil)
        @actual = actual
        @negation = negation
      end

      def ==(expected)
        @actual.send("#{meh}_equal", expected)
      end

      def meh
        if @negation
          "wont"
        else
          "must"
        end
      end
    end
  end
end

class Object
  include Minitest::RspecShouldSyntax::Expectations
end
