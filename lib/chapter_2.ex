defmodule Chapter_2 do
  @moduledoc """
  Chapter 2 - Induction and Recursion
  """

  @spec are_equal?(list(any), list(any)) :: boolean
  @doc """
  Def. 2.12 - Two sequences S and T are equal iff
  1. they are both empty or
  2. the head of S equals the head of T and the tail of S equals the tail of T
  """
  def are_equal?(_s = [], _t = []), do: true
  def are_equal?(_s = [], _t), do: false
  def are_equal?(_s, _t = []), do: false

  def are_equal?([head_s | tail_s], [head_t | tail_t]),
    do: head_s == head_t and are_equal?(tail_s, tail_t)
end
