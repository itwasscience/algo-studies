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
end
