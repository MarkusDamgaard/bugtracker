defmodule Bugtracker.divisibleTest do
	use ExUnit.Case
	doctest divisible
	alias Bugtracker.divisible
	test "canDivide" do
    assert Bugtracker.divisible.divide(15,3) == 3
		assert Bugtracker.divisible.divide(2,2) == 1
		assert Bugtracker.divisible.divide(0,2) == 0
		assert Bugtracker.divisible.divide(-12,4) == -3
  end

	test "canDivide" do
    assert Bugtracker.divisible.isEven(4)
		assert Bugtracker.divisible.isEven(0)
		assert Bugtracker.divisible.isEven(5)
		assert Bugtracker.divisible.isEven(3)
  end
end
