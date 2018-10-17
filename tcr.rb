class Tcr
  def self.fib(n)
    return 1 if n < 3

    fib(n - 1) + fib(n -2)
  end

  def self.square(n)
    n * n
  end
end
