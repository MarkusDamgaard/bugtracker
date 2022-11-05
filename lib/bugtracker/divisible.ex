defmodule Bugtracker.Divisible do
  alias Divisible
  @spec divide(number, number) :: number
  def divide(a,b) do
    result = a/b
    result
  end

  @spec isDivisible(number, number) :: boolean
  def isDivisible(n, i) do
    divided = divide(n,i)
    dividedFloor = floor(divided)
    if divided == dividedFloor do
      :true
    else
      :false
    end
  end

  @spec isEven(number) :: boolean
  def isEven(n) do
    isDivisible(n, 2)
  end
end

IO.puts Enum.reduce([11, 41, 42], false, fn x, acc -> Bugtracker.Divisible.isEven(x) or acc end)
