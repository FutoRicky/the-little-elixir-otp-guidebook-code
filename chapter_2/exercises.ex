# Exercise 1
# Implement sum/1. This function should take in a list of numbers and return the sum of the list.

defmodule Calculate do
  def sum([head | tail]), do: head + sum(tail)
  def sum([]), do: 0
end

# Exercise 3
# Transform [1, [[2], 3]] to [9,4,1] with and without the pipe operators

defmodule WithoutPipe do
  def transform, do: transform([1, [[2], 3]])
  def transform([head | tail]) do
    Enum.reverse(transform(head) ++ transform(tail))
  end
  def transform(num) when is_number(num), do: [num * num]
  def transform([]), do: []
end

defmodule WithPipe do
  def transform, do: transform([1, [[2], 3]])
  def transform([head | tail]) do
    (head |> transform) ++ (tail |> transform) |> Enum.reverse
  end
  def transform(num) when is_number(num), do: [num * num]
  def transform([]), do: []
end

# Exercise 4
# Translate crypto:md5("Tales from the Crypt"). from Erlang to Elixir

defmodule EarlangToElixir do
  def translate, do: :crypto.md5("Tales from the Crypt")
end

# Exercise 6
# Take a look at an IPV4 packet. Try writing a parser for it. 

# TODO