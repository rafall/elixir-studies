defmodule Recursion do
  def fizzbuzz(arr) when length(arr) > 0 do
    cond do
      rem(hd(arr), 3) == 0 ->
        IO.puts "Fizz"
      rem(hd(arr), 5) == 0 ->
        IO.puts "Buzz"
      true ->
        IO.puts hd(arr)
    end
    fizzbuzz(tl(arr))
  end

  def fizzbuzz(_arr) do
    IO.puts ""
  end
end

Recursion.fizzbuzz([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])
