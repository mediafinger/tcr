require "rspec"

class Fibonacci
  def self.fib(n)
    return 0 if n == 0
    return 1 if n == 1

    fib(n - 1) + fib(n - 2)
  end
end

describe Fibonacci do
  it "tests" do
    expect(described_class.fib(0)).to eq(0)
    expect(described_class.fib(1)).to eq(1)
    expect(described_class.fib(2)).to eq(1)
    expect(described_class.fib(3)).to eq(2)
    expect(described_class.fib(4)).to eq(3)
    expect(described_class.fib(5)).to eq(5)
  end
end
