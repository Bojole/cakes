# encoding: UTF-8
# frozen_string_literal: true
#
# Module Snips provides interview exercises and code snippets
#
# @author Bojil Velinov <bojil@me.com>
#
module Snips
  #
  # Implements computation of fibonacci set using recursive technique
  #
  # @param [Numeric] n  The n-th fibonacci number in the fibonacci sequence/set
  #
  # @return [Numeric]   The fibonacci number corresponding to the @param _n_ position in the set
  #
  def fib_recursive(n)
    return n if n == 0 || n == 1
    puts "Computing fib_recursive(#{n})"
    fib_recursive(n - 1) + fib_recursive(n - 2)
  end

  #
  # Implements computation of fibonacci set using iterative technique
  #
  # @param [Numeric] n  The n-th fibonacci number in the fibonacci sequence/set
  #
  # @return [Numeric]   The fibonacci number corresponding to the @param _n_ position in the set
  #
  def fib_iterative(n)
    raise Exception 'Index was negative! No negative index in series' if n < 0
    return n if n == 0 || n == 1

    prev = 0
    prev_prev = 1
    current = 0

    n.times do
      puts "Computing fib_iterative(#{n})"
      current = prev + prev_prev
      prev_prev = prev
      prev = current
    end
    current
  end

  #
  # Class FibonacciRecursiveMemorization provides recursive implmentation that computes the fibonacci number
  # at the given position in the set but utilizes a memory Hash for previously computed results
  #
  # @author Bojil Velinov <bojil@me.com>
  #
  class FibonacciRecursiveMemorization
    def initialize
      @memo = {}
    end

    #
    # Implements computation of fibonacci set using iterative technique
    #
    # @param [Numeric] n  The n-th fibonacci number in the fibonacci sequence/set
    #
    # @return [Numeric]   The fibonacci number corresponding to the @param _n_ position in the set
    #
    def fib_memorization(n)
      raise Exception 'Index was negative!' if n < 0
      return n if n == 0 || n == 1

      if @memo.include? n
        puts "Grabbing memo[#{n}]"
        return @memo[n]
      end

      puts "Computing fibonacci(#{n})"
      @memo[n] = fib_memorization(n - 1) + fib_memorization(n - 2)
    end
  end
end
