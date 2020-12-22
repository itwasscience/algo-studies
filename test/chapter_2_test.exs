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

  test "2.13 - x is a member of S" do
    # Valids
    assert Chapter_2.is_member_of?(1, [1, 3, 5])
    assert Chapter_2.is_member_of?(3, [1, 3, 5])
    assert Chapter_2.is_member_of?(5, [1, 3, 5])
    assert Chapter_2.is_member_of?(1, [1])
    # Invalids
    refute Chapter_2.is_member_of?(1, [])
    refute Chapter_2.is_member_of?(1, [2])
    refute Chapter_2.is_member_of?(1, [2, 4, 6])
  end

  test "2.14 - Length can be calcualted properly for S" do
    assert Chapter_2.get_length([]) == 0
    assert Chapter_2.get_length([1]) == 1
    assert Chapter_2.get_length([1, 2]) == 2
    assert Chapter_2.get_length([1, 2, 3, 4, 5]) == 5
  end
end
