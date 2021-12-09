defmodule Palindrome do
    def is_palindrome(""), do: true

    def is_palindrome(s) when byte_size(s) == 1, do: true

    def is_palindrome(s) do
        s == String.reverse(s)
    end 
end
