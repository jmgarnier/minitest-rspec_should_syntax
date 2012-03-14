module Minitest
  module RspecShouldSyntax
    module Expectations
      def should
        Shoulder.new(self)
      end
    end

    class Shoulder
      def initialize(actual)
        @actual = actual
      end

      def ==(expected)
        @actual.must_equal expected
      end
    end
  end
end

class Object
  include Minitest::RspecShouldSyntax::Expectations
end
