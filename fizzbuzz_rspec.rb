require_relative "fizzbuzz"
=begin

step 1:

describe Fizzbuzz do
end

in file:

module Fizzbuzz
  extend self
end

step 2:

describe Fizzbuzz do
  specify "fb.value(1) is 1" do
    expect( Fizzbuzz.fb_value(1) ).to eq (1)
  end
end

in file:

module Fizzbuzz
  extend self

  def fb_value(n)
    n
  end
end


step 3:
write another test:

specify "fb_value(2) is 2" do
  expect

in file:
module Fizzbuzz
  extend self

  def fb_value(n)
    if (n % 3).zero
    "fizz"
  end
end
*** commit after each pass ***

=end
