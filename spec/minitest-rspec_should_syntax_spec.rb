require_relative 'spec_helper'
require_relative '../lib/minitest-rspec_should_syntax'

describe Minitest::RspecShouldSyntax do

  # minitest/spec comes with let & subject ;)

  describe "vim plugin" do
    it "you can use https://github.com/sunaku/vim-ruby-minitest"
  end

  describe "Which Mock framework?" do
    it "has be super easy to use : TODO choose either
        https://github.com/btakita/rr (more readable syntax, JM +1)
     or https://github.com/floehopper/mocha"
  end

  describe "How to Integration tests: will there be any time?" do

    it "will be located in spec/integration ?"
    it "TODO later: find a small ruby gem project using RSpec "
    it "provides an helper to run on "

  end

  describe "potential implementation" do
    it "see http://pastie.org/367764 "
  end

  # implement these, order by priority
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-8/docs/built-in-matchers/
  describe "Equality matchers" do

=begin
    a.equal?(b) # object identity - a and b refer to the same object
    a.eql?(b)   # object equivalence - a and b have the same value
    a == b      # object equivalence - a and b have the same value with type conversions

    rspec-expectations ships with matchers that align with each of these methods:

    a.should equal(b) # passes if a.equal?(b)
    a.should eql(b)   # passes if a.eql?(b)
    a.should == b     # passes if a == b

    It also ships with two matchers that have more of a DSL feel to them:

    a.should be(b) # passes if a.equal?(b)
    a.should eq(b) # passes if a == b
=end

    it ""

  end

  describe "raise_error matcher" do
    it ""
  end

  describe "include matcher" do
    it ""
  end

  describe "These matchers won't be implemented at this stage" do
    it "displays a Sorry message "

    it "be matchers"
    it "be_within"
    it "exist"
    it "expect change"
    it "have(n).items"
    it "operator"
    it "predicate"
    it "respond_to"
    it "satisfy"
    it "throw" # I don$'t understand this one!
    it "specify types of object"
    it "cover"
    # see http://adam.heroku.com/past/2008/2/7/minimalist_rspec_matching/
  end

  describe "RSpec tags" do
    it "TODO later ;)"
  end

  it "should take less than 3 pomodori to set up a dev env!" do
    true.must_equal true
  end

end
