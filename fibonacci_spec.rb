require "rspec"

class Fibonacci
  def self.fib
  end
end

describe Fibonacci do
  it "tests" do
    expect(described_class.fib).to eq(nil)
  end
end
