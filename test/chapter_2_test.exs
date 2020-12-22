defmodule Chapter_2Test do
  use ExUnit.Case
  import ExUnit.CaptureIO
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

  test "2.15 - Get kth Element of S - 0 Indexed" do
    assert Chapter_2.get_elem(0, [0, 1, 2, 3, 4, 5]) == 0
    assert Chapter_2.get_elem(4, [0, 1, 2, 3, 4, 5]) == 4
    assert Chapter_2.get_elem(0, []) == nil
    # Out of Range
    assert Chapter_2.get_elem(34, [1, 2, 3]) == nil
    assert Chapter_2.get_elem(34, [1, 2, 3]) == nil
  end

  test "2.18 - Traverse(S)" do
    assert capture_io(fn -> Chapter_2.traverse(["h", "e", "l", "l", "o"]) end) == "hello"
    assert capture_io(fn -> Chapter_2.traverse([1, 2, 3, 4, 5]) end) == "12345"
    assert capture_io(fn -> Chapter_2.traverse([]) end) == ""
  end

  test "2.19 - Concatenation of S, T" do
    assert Chapter_2.concat([], []) == []
    assert Chapter_2.concat([], [3, 4, 5]) == [3, 4, 5]
    assert Chapter_2.concat([1, 2], []) == [1, 2]
    assert Chapter_2.concat([1, 2], [3, 4, 5]) == [1, 2, 3, 4, 5]
  end

  test "2.20 - Sum(S)" do
    assert Chapter_2.sum([1, 2, 3]) == 6
    assert Chapter_2.sum([1, 2, 3, 4]) == 10
    assert Chapter_2.sum([1]) == 1
    assert Chapter_2.sum([]) == 0
    # Floating Point strikes again.
    assert_in_delta Chapter_2.sum([3.14, 1.73, 60.3]), 65.17, 0.01
  end

  test "2.21 - Max(S)" do
    assert Chapter_2.max([]) == nil
    assert Chapter_2.max([1, 2, 3]) == 3
    assert Chapter_2.max([3, 2, 1]) == 3
    assert Chapter_2.max([3]) == 3
  end

  test "2.21.b - Min(S)" do
    assert Chapter_2.min([]) == nil
    assert Chapter_2.min([1, 2, 3]) == 1
    assert Chapter_2.min([3, 2, 1]) == 1
    assert Chapter_2.min([3]) == 3
  end

  test "2.22 - Concatlist can concatenate multiple lists" do
    assert Chapter_2.concatlist([[1, 2]]) == [1, 2]
    assert Chapter_2.concatlist([[1, 2], [3, 4, 5]]) == [1, 2, 3, 4, 5]
    assert Chapter_2.concatlist([[1, 2], [3, 4, 5], [6]]) == [1, 2, 3, 4, 5, 6]
  end
end
