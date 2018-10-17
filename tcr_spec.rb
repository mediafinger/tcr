require "rspec"
require_relative "./tcr.rb"

describe Tcr do
  it "tests fibonacci" do
    expect(described_class.fib(1)).to eq(1)
    expect(described_class.fib(2)).to eq(1)
    expect(described_class.fib(3)).to eq(2)
    expect(described_class.fib(4)).to eq(3)
  end

  it "tests squaring numbers" do
    expect(described_class.square(0)).to eq(0)
    expect(described_class.square(1)).to eq(1)
    expect(described_class.square(2)).to eq(4)
    expect(described_class.square(2.5)).to eq(6.25)
  end
end
