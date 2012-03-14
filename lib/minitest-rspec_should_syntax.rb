module Minitest
  module RspecShouldSyntax
    def should
      raise "Should what?"
    end
  end
end

class Object
  include Minitest::RspecShouldSyntax
end
