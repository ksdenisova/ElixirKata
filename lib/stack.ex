defmodule Stack do
    defstruct [ list: [] ]

    # def empty?(stack = %Stack{}), do: length(stack.list) == 0

    def size(stack = %Stack{}), do: length(stack.list)

    def peek(%Stack{ list: list }) when list == [], do: :empty
    def peek(%Stack{ list: [top|_] }), do: top

    def push(%Stack{ list: list }, element), do: %Stack{ list: [element | list] }
end
