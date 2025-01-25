```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce_while(list, {:ok, 0}, fn x, {:ok, acc} ->
  if x == 3 do
    {:halt, {:error, :three_found}}
  else
    {:cont, {:ok, acc + x}}
  end
 end)

case result do
  {:ok, acc} -> IO.puts("Sum (excluding 3): #{acc}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end
```