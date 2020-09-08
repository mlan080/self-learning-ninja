#What is the difference between testing and rspec?

class DeadError < StandardError; end

class Dog
  def bark
    raise DeadError.new "can't bark when dead" if @dead
    "woof"
  end

  def die
    @dead = true
  end
end

require 'test/unit'
require 'dog'

  class DogTest < Test::Unit::TestCase
    def setup
      @dog = Dog.new
    end

    def test_barks
      assert_equal "woof", @dog.bark
    end

    def test_doesnt_bark_when_dead
      @dog.die
      assert_raises DeadError do
        @dog.bark
    end
  end
end

require 'rspec'
require 'dog'

describe Dog do
  before (:all) do
    @dog = Dog.new
  end

  context "when alive" do
    it "barks" do
      expect (@dog.bark == 'woof')
    end
  end

  context "when dead" do
    before do
      @dog.die
    end

    it "raises an error when asked to bark" do
      lambda { @dog.bark }.should raise_error(DeadError)
    end
  end
end


