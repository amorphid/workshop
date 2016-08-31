defmodule Lab1Int do
  def count(str) do
    String.split(str)
    |> Enum.reduce(%{}, &count_word/2)
  end

  defp count_word(word, acc) do
    Map.update(acc, word, 1, fn i -> i + 1 end)
  end
end
