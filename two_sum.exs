defmodule Recursion do
  def two_sum(arr, target, map, i) when length(arr) > 0 do
    if map[hd(arr)] && map[hd(arr)] >= 0 do
      [map[hd(arr)], i]
    else
      newMap = Map.put(map, target - hd(arr), i)
      two_sum(tl(arr), target, newMap, i + 1)
    end
  end

  def two_sum(_arr, _target, _map, _i) do
    []
  end
end

result = Recursion.two_sum([2,7,13,15], 22, %{}, 1)
IO.inspect result
