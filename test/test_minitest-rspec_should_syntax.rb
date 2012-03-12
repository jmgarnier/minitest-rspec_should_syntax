require 'helper'
require 'minitest/rspec_should_syntax'

class TestMinitest::RspecShouldSyntax < MiniTest::Unit::TestCase

  def test_version
    version = Minitest::RspecShouldSyntax.const_get('VERSION')

    assert(!version.empty?, 'should have a VERSION constant')
  end

end
