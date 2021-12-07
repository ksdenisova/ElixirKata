defmodule StackTest do
    use ExUnit.Case

    describe "#empty?/1" do
        test "returns false if stack is not empty" do
            stack = %Stack{} |> Stack.push(:element)

            assert Stack.empty?(stack) == false
        end

        test "returns true if stack is empty" do
            stack = %Stack{}

            assert Stack.empty?(stack) == true
        end
    end
    
    describe "#peek/1" do
        test "returns top element of the stack" do
            stack = %Stack{} |> Stack.push(:element)

            assert Stack.peek(stack) == :element
        end

        test "returns :empty when stack is empty" do
            stack = %Stack{}

            assert Stack.peek(stack) == :empty
        end
    end

    describe "#push/2" do
        test "add element to an empty stack" do
            stack = %Stack{} |> Stack.push(:element)  

            assert Stack.peek(stack) == :element
        end

        test "add element to the top of the stack" do
            stack = %Stack{}
            |> Stack.push(:element1)
            |> Stack.push(:element2)

            assert Stack.size(stack) == 2
            assert Stack.peek(stack) == :element2
        end
    end

    describe "#size/1" do
        test "is 0 for an empty stack" do
            stack = %Stack{}

            assert Stack.size(stack) == 0
        end

        test "is 1 for a stack with 1 item" do
            stack = %Stack{}
            |> Stack.push(:element)

            assert Stack.size(stack) == 1
        end

        test "is 3 for a stack with 3 items" do
            stack = %Stack{}
            |> Stack.push(:element)
            |> Stack.push(:element)
            |> Stack.push(:element)

            assert Stack.size(stack) == 3
        end
    end
end

