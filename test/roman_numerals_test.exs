defmodule RomanNumeralsTest do
  use ExUnit.Case

  alias RomanNumerals

  test "module exists" do
    assert is_list(RomanNumerals.module_info())
  end

  test "returns an empty string for 0" do
    actual = RomanNumerals.numerals(0)

    expected = ""
    assert actual == expected
  end

  test "returns an I for 1" do
    actual = RomanNumerals.numerals(1)

    expected = "I"
    assert actual == expected
  end

  test "returns an II for 2" do
    actual = RomanNumerals.numerals(2)
  
    expected = "II"
    assert actual == expected
  end
  
  test "returns an III for 3" do
    actual = RomanNumerals.numerals(3)
  
    expected = "III"
    assert actual == expected
  end

  test "returns an IV for 4" do
    actual = RomanNumerals.numerals(4)

    expected = "IV"
    assert actual == expected
  end


  test "returns an  for 49" do
    actual = RomanNumerals.numerals(49)

    expected = "XLIX"
    assert actual == expected
  end
end
