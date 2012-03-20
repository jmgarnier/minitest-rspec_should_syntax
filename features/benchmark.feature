Feature: Benchmark to compare RSpec, minispec and minitest-rspec_should_syntax

  https://twitter.com/#!/dchelimsky/status/180676997305991168

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
    When I run `rspec rspec_syntax.rb`
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
    When I run `ruby minitest_rspec_should_syntax.rb`
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
    When I run `ruby minitest_syntax.rb`
    Then display the output without the dots