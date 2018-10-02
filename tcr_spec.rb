require "rspec"

class Tcr
  def self.fib(n)
    return 1
  end
end

describe Tcr do
  it "test" do
    expect(described_class.fib(1)).to eq(1)
  end
end
