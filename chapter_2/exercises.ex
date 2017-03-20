# Exercise 1
defmodule Calculate do
  def sum([head | tail]), do: head + sum(tail)
  def sum([]), do: 0
end

# Exercise 3
defmodule WithoutPipe do
  def transform([head | tail]) do
    Enum.reverse(transform(head) ++ transform(tail))
  end
  def transform(num) when is_number(num), do: [num * num]
  def transform([]), do: []
end

defmodule WithPipe do
  def transform([head | tail]) do
    (head |> transform) ++ (tail |> transform) |> Enum.reverse
  end
  def transform(num) when is_number(num), do: [num * num]
  def transform([]), do: []
end

# Exercise 6
# TODO