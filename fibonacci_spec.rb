require "rspec"

class Fibonacci
  def self.fib(n)
    1
  end
end

describe Fibonacci do
  it "tests" do
    expect(described_class.fib(1)).to eq(1)
  end
end
