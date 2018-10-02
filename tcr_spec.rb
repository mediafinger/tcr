require "rspec"

class Tcr
  def self.fib(n)
    return 1 if n < 3

    fib(n - 1) + fib(n -2)
  end
end

describe Tcr do
  it "test" do
    expect(described_class.fib(1)).to eq(1)
    expect(described_class.fib(2)).to eq(1)
    expect(described_class.fib(3)).to eq(2)
  end
end
