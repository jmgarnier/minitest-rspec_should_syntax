module Minitest
  module RspecShouldSyntax

    module Matchers
      class RaiseErrorMatcher
        def assert_against(actual_lambda)
          actual_lambda.must_raise
        end
      end

      def raise_error
        RaiseErrorMatcher.new
      end
    end

    module Expectations
      def should(matcher=nil)
        if matcher.nil? # ==
          ExpectationHandler.new(self)
        else # raise_error
          # matcher.assert_against(self)
          @actual.must_raise
        end
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

      private

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
  include Minitest::RspecShouldSyntax::Matchers
end

