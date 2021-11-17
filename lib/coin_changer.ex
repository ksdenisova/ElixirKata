defmodule CoinChanger do
    def make_change(change, 0) do
        change
    end

    def make_change(change, coins) when coins >= 25 do
        change = %{change | :quarters => change[:quarters] + 1}
        quarter = 25
        make_change(change, coins - quarter)
    end

    def make_change(change, coins) when coins >= 10 do
        change = %{change | :dimes => change[:dimes] + 1}
        dime = 10
        make_change(change, coins - dime)
    end

    def make_change(change, coins) when coins >= 5 do
        change = %{change | :nickels => change[:nickels] + 1}
        nickel = 5
        make_change(change, coins - nickel)
    end

    def make_change(change, coins) when coins >= 1 do
        change = %{change | :pennies => change[:pennies] + 1}
        penny = 1
        make_change(change, coins - penny)
    end
end
