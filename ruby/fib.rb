#! /usr/bin/env ruby


def fib(n)
  a = 1
  b = 1
  ar = []
  for _ in 1..n do
    ar.push(a)
    a, b = b, a + b
  end
  return ar
end

(fib ARGV.first.to_i).each {|x| print x, "\n"}

