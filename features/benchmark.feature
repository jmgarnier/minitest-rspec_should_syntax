Feature: Benchmark to compare RSpec, minispec and minitest-rspec_should_syntax

  @avdi: "Having used MiniTest::Spec for OoR, I wouldn't use it again. Too much yet not enough."
  https://twitter.com/#!/dchelimsky/status/180676997305991168

Output:

  RSpec
Finished in 2.38 seconds
15001 examples, 0 failures
        5.10 real         4.12 user         0.45 sys
...
minitest plugin: rspec_should_syntax
Run options: --seed 53545
# Running tests:
Finished tests in 1.753909s, 8552.8953 tests/s, 14253.8752 assertions/s.
15001 tests, 25000 assertions, 0 failures, 0 errors, 0 skips
        2.83 real         2.06 user         0.25 sys
...
minitest/spec
Run options: --seed 46668
# Running tests:
Finished tests in 1.409070s, 10646.0289 tests/s, 17742.1988 assertions/s.
15001 tests, 25000 assertions, 0 failures, 0 errors, 0 skips
        2.42 real         1.89 user         0.25 sys

  Scenario: RSpec
    Given a file named "rspec_syntax.rb" with:
    """
      puts "RSpec"
      describe "Framework" do
        before(:each) do
          @numbers = 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2
        end

        it "is fast" do
          (1..5000).each do |n|
            n.should == n
            n.should_not == 0
          end
        end

        (1..15000).each do |n|
          it "is example #{n}" do
            (1 * @numbers).should_not == nil
          end
        end

        after(:each) do
          @numbers = nil
        end
      end
      """
    When I run `time rspec rspec_syntax.rb`
    Then display the output without the dots

  Scenario: minitest plugin: rspec_should_syntax
    Given a file named "minitest_rspec_should_syntax.rb" with:
    """
      puts "minitest plugin: rspec_should_syntax"
      require 'minitest/spec'
      require_relative '../../lib/minitest-rspec_should_syntax'
      MiniTest::Unit.autorun

      describe "Framework" do
        before(:each) do
          @numbers = 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2
        end

        it "is fast" do
          (1..5000).each do |n|
            n.should == n
            n.should_not == 0
          end
        end

        (1..15000).each do |n|
          it "is example #{n}" do
            (1 * @numbers).should_not == nil
          end
        end

        after(:each) do
          @numbers = nil
        end
      end
      """
    When I run `time ruby minitest_rspec_should_syntax.rb`
    Then display the output without the dots

  Scenario: minitest/spec
    Given a file named "minitest_syntax.rb" with:
    """
      puts "minitest/spec"
      require 'minitest/spec'
      require 'minitest/autorun'

      describe "MiniSpec" do
        before do
          @numbers = 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2
        end

        it "is fast" do
          (1..5000).each do |n|
            n.must_equal(n)
            refute_nil n
          end
        end

        (1..15000).each do |n|
          it "is example #{n}" do
            (1 * @numbers).wont_equal nil
          end
        end

        after(:each) do
          @numbers = nil
        end
      end

      """
    When I run `time ruby minitest_syntax.rb`
    Then display the output without the dots