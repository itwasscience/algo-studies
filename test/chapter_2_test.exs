defmodule Chapter_2Test do
  use ExUnit.Case
  doctest Algos

  test "2.12 - two equal lists are equal" do
    # Valids
    assert Chapter_2.are_equal?([], [])
    assert Chapter_2.are_equal?([1], [1])
    assert Chapter_2.are_equal?([9, 8, 7], [9, 8, 7])
    # Invalids
    refute Chapter_2.are_equal?([1], [2])
    refute Chapter_2.are_equal?([1], [])
    refute Chapter_2.are_equal?([], [3, 4, 5])
  end
end
