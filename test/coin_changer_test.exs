defmodule CoinChangerTest do
  use ExUnit.Case

  alias CoinChanger

  test "module exists" do
    assert is_list(CoinChanger.module_info())
  end

  test "returns all zero for 0 coins given" do
    coins = 0
    actual = %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}
             |> CoinChanger.make_change(coins)
    
    expected = %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}

    assert actual == expected
  end

  test "returns an 1 penny for 1 coin given" do
    coins = 1
    actual = %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}
             |> CoinChanger.make_change(coins)

    expected = %{:pennies => 1, :nickels => 0, :dimes => 0, :quarters => 0}

    assert actual == expected
  end

  test "returns an 2 pennies for 2 coins given" do
    coins = 2
    actual =  %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}
              |> CoinChanger.make_change(coins)

    expected = %{:pennies => 2, :nickels => 0, :dimes => 0, :quarters => 0}

    assert actual == expected
  end

  test "returns an 3 quarters for 75 coins given" do
    coins = 75
    actual =  %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}
              |> CoinChanger.make_change(coins)

    expected = %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 3}

    assert actual == expected
  end

  test "returns an 3 quarters and 3 pennies for 78 coins given" do
    coins = 78
    actual =  %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}
              |> CoinChanger.make_change(coins)

    expected = %{:pennies => 3, :nickels => 0, :dimes => 0, :quarters => 3}

    assert actual == expected
  end

  test "returns an 4 quarters, 1 dime and 3 pennies for 113 coins given" do
    coins = 113
    actual =  %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}
              |> CoinChanger.make_change(coins)

    expected = %{:pennies => 3, :nickels => 0, :dimes => 1, :quarters => 4}

    assert actual == expected
  end

  test "returns an 1 quarter, 1 dime, 1 nickel and 1 penny for 41 coins given" do
    coins = 41
    actual =  %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}
              |> CoinChanger.make_change(coins)

    expected = %{:pennies => 1, :nickels => 1, :dimes => 1, :quarters => 1}

    assert actual == expected
  end

  test "returns an 1 nickel for 5 coins given" do
    coins = 5
    actual =  %{:pennies => 0, :nickels => 0, :dimes => 0, :quarters => 0}
              |> CoinChanger.make_change(coins)

    expected = %{:pennies => 0, :nickels => 1, :dimes => 0, :quarters => 0}

    assert actual == expected
  end
end
