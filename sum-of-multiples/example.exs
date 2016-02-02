defmodule SumOfMultiples do

  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.

  The default factors are 3 and 5.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors \\ [3, 5]) do
    Enum.reduce(1..limit-1, 0, fn(n, acc) ->
      if Enum.any?(factors, &(rem(n, &1) == 0)), do: acc + n, else: acc end)
  end

end
