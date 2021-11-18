defmodule RomanNumerals do
  @numerals [L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1]
 
  def numerals(number) do
    numerals(number, "", @numerals)
  end

  def numerals(number, roman_number, [{letter, digit} | _t] = numerals_list) when number >= digit do
    numerals(number - digit, roman_number <> to_string(letter), numerals_list) 
  end

  def numerals(number, roman_number, [ _ | numberals]) do
    numerals(number, roman_number, numberals) 
  end

  def numerals(_, roman_number, _) do
    roman_number
  end
end
