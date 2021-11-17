defmodule CoinChangerTest do
  use ExUnit.Case

  alias CoinChanger

  doctest CoinChanger

  test "module exists" do
    assert is_list(CoinChanger.module_info())
  end

  test "returns a change with pennies" do
    change = CoinChanger.make_change(0)

    assert Map.has_key?(change, :pennies)
  end

  test "returns a change with nickels" do
    change = CoinChanger.make_change(0)

    assert Map.has_key?(change, :nickels)
  end

  test "returns a change with dimes" do
    change = CoinChanger.make_change(0)

    assert Map.has_key?(change, :dimes)
  end

  test "returns a change with quarters" do
    change = CoinChanger.make_change(0)

    assert Map.has_key?(change, :quarters)
  end

  test "returns all zero if 0 was given" do
    coins = 0
    actual = CoinChanger.make_change(coins) |> Map.values
    
    expected = [0, 0, 0, 0]

    assert actual == expected
  end
end
