# frozen_string_literal: true

combination = lambda do |n|
  lambda do |r|
    (n - r + 1..n).inject(:*) / (1..r).inject(:*)
  end
end
n = gets.to_i
r = gets.to_i
nCr = combination.call(n)
puts nCr.call(r)
