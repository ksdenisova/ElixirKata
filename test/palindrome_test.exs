defmodule PalindromeTest do
    use ExUnit.Case

    describe "#is_palindrome/1" do
        test "Returns true if length of string is one" do
            assert Palindrome.is_palindrome("a") == true           
        end

        test "Returns true if length of string is zero" do
            assert Palindrome.is_palindrome("") == true           
        end

        test "Returns true if string is 'aa'" do
            assert Palindrome.is_palindrome("aa") == true           
        end

        test "Returns false if string is 'ab'" do
            assert Palindrome.is_palindrome("ab") == false           
        end

        test "Returns false if string is 'banana'" do
            assert Palindrome.is_palindrome("banana") == false           
        end

        test "Returns true if string is 'racecar'" do
            assert Palindrome.is_palindrome("racecar") == true         
        end
    end
end
